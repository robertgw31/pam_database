-- table: attachmentLink
\connect pam
set schema 'public';


drop table if exists legalEntityLink;
create table legalEntityLink (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,isDeleted boolean default false
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,legalEntityId uuid not null
	,owningObjType varchar(20) not null
	,owningObjId uuid not null
	,legalEntityType varchar(100) not null
	,friendlyName varchar(100) not null

);

create index legalEntityLinkidx_01 on legalEntityLink(accountId, isDeleted, owningObjType, owningObjId, friendlyName);


grant select, insert, update, delete on legalEntityLink to pam;

