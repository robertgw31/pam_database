-- table: policyPlace
\connect pam
set schema 'public';


drop table if exists policyPlace;
create table policyPlace (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,policyId uuid not null
	,placeId uuid not null

);

create unique index policyPlace_idx01 on policyPlace(accountId, policyId, sortOrder, placeId);
create unique index policyPlace_idx02 on policyPlace(accountId, placeId, policyId);

grant select, insert, update, delete on policyPlace to pam;


