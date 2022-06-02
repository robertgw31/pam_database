-- table: attachmentLink
\connect pam
set schema 'public';


drop table if exists attachmentLink;
create table attachmentLink (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int  default 0
	,recVersion bigint not null default 0
  ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,attachmentId uuid not null
	,owningObjType varchar(20) not null
	,owningObjId uuid not null
	,attachmentType varchar(100)
	,friendlyName varchar(100)
	,isDeleted boolean not null default false

);



create index attachmentLink_idx_01 on attachmentLink(accountId, isDeleted, owningObjType, owningObjId, friendlyName);


grant select, insert, update, delete on attachmentLink to pam;
