-- table: attachment
\connect pam
set schema 'public';

drop table if exists attachment;
create table attachment (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int default 0
	,isDeleted boolean not null default false
	,recVersion bigint not null default 0
  ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,title varchar(100),
	originalFileName varchar(500)
	,mimeType varchar(100)
	,storageSpace varchar(200) not null
	,storageId varchar(200) not null

);


create index attachment_idx_01 on attachment(accountId, isDeleted, title, id);

grant select, insert, update, delete on attachment to pam;

