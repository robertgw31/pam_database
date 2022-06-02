\connect pam
set schema  'public';

$$

DECLARE
    v_tranAuditId uuid;
    v_userLoginId uuid;
    v_accountId uuid;
    v_policyId uuid;
    v_policyPlaceId uuid;
    v_insurerEntityId uuid;
    v_agentEntityId uuid;
    v_primaryResidencePlaceId uuid;
    v_id uuid;

BEGIN

v_tranAuditId = (select id from tranAudit order by auditTimeStamp limit 1);
v_userLoginId = (select id from userLogin where email = 'testerv_senutech.com');
v_accountId = (select id from account where ownerUserLoginID = v_userLoginId);

v_primaryResidencePlaceId = (select id from place where accountId = v_accountId  and friendlyname = 'Primary Residence');


truncate table policy;
truncate table policyPlace;
truncate table legalEntityRole;
truncate table legalEntity;

insert into legalEntity(accountId, displayName, companyName, address1,address2,city,provence,country,postalCode,recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountId,'State Farm','State Farm','1 State Farm Way', null, 'Omega', 'OH', 'US','11212',1,v_tranAuditId,v_tranAuditId)
    returning id into v_id;
v_insurerEntityId = v_id;

insert into policy(accountid, accountInsurerID, policyNumber, recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountId,v_insurerEntityId, 'X423-DF-12423',1,v_tranAuditId,v_tranAuditId)
    returning id into v_id;
v_policyId = v_id;

insert into policyPlace(accountId, policyId, placeId, sortOrder, recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountId, v_policyId, v_primaryResidencePlaceId,1,1,v_tranAuditId,v_tranAuditId)
    returning id into v_id;
v_policyPlaceId = v_id;

insert into legalEntity(accountId, displayName, companyName, address1,address2,city,provence,country,postalCode,recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountId,'A-1 Insurance Brokers','A-1 Insurance Brokers','1 Main Street', null, 'Hooterville', 'AR', 'US','12111',1,v_tranAuditId,v_tranAuditId)
    returning id into v_id;
v_agentEntityId = v_id;


insert into legalEntityRole(accountId, legalEntityId, owningObjType, owningObjId, role, recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountid,v_insurerEntityid,'POLICY_PLACE',v_policyPlaceId,'INSURER',1,v_tranAuditId,v_tranAuditId);


insert into legalEntityRole(accountId, legalEntityId, owningObjType, owningObjId, role, recVersion,createTranAuditID,updateTranAuditID)
    values(v_accountid,v_agentEntityId,'POLICY_PLACE',v_policyPlaceId,'AGENT',1,v_tranAuditId,v_tranAuditId);

END

$$;




