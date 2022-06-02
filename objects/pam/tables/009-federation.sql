-- table: account
\connect pam
set schema 'public';



drop table if exists federation;
create table federation (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,friendlyName varchar(100)
	,notes varchar(4000)
	,sortOrder int  default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null



);


grant select, insert, update, delete on federation to pam;


