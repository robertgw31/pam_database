-- table: policy
\connect pam
set schema 'public';


drop table if exists policy;
create table policy (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,parentId uuid
	,accountInsurerID uuid not null
	,policyNumber varchar(20) not null

);



create unique index policy_idx_01 on policy(accountId, parentId, accountInsurerID, policyNumber);
create unique index policy_idx_02 on policy(accountId, accountInsurerID, policyNumber);


grant select, insert, update, delete on policy to pam;


