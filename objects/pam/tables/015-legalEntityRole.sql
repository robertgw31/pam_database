-- table: entityRole
\connect pam
set schema 'public';


drop table if exists legalEntityRole;
create table legalEntityRole (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,legalEntityId uuid not null
	,owningObjType varchar(100) not null
	,owningObjId uuid not null
	,role varchar(100) not null,
	description varchar(100)

);

create index legalEntityRole_idx_01 on legalEntityRole(accountId, legalEntityId, owningObjType, owningObjId, role, id);
create index legalEntityRole_idx_02 on legalEntityRole(accountId, owningObjType, owningObjId, role, sortOrder, legalEntityId, id);


grant select, insert, update, delete on legalEntityRole to pam;

