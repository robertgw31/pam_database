-- table: asset
\connect pam
set schema 'public';



drop table if exists scan;
create table scan (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,owningObjType varchar(20) not null
	,owningObjId uuid not null
	,scanType varchar(200) not null
	,storageSpace varchar(200) not null
	,storageId varchar(200) not null

);

create unique index scan_idx_01 on scan(accountId, id);
create unique index scan_idx_02 on scan(accountId, owningObjType, owningObjId, id);


grant select, insert, update, delete on scan to pam;

