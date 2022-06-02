-- table: accountInsurer
\connect pam
set schema 'public';


drop table if exists accountInsurer;
create table accountInsurer (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int default 0
	,recVersion bigint not null default 0
  ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,carrierName varchar(100) not null

);



create unique index accountInsurer_idx_01 on accountInsurer(accountId, carrierName);



grant select, insert, update, delete on accountInsurer to pam;
