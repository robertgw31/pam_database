-- table: category
\connect pam
set schema 'public';


drop table if exists category;
create table category (
	 id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int  default 0
	,recVersion bigint not null default 0
   ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,scope varchar(100) not null
	,parentId uuid
    ,stockCategoryId uuid
    ,friendlyName varchar(300) not null

);

create index category_idx_01 on category(accountId, friendlyName);


grant select, insert, update, delete on category to pam;

/*
CREATE FULLTEXT INDEX ON category
    (
     friendlyName
        ,notes
        )
    KEY INDEX pk_category ON pamCat
    WITH (CHANGE_TRACKING AUTO, stoplist = pamStoplist)

*/