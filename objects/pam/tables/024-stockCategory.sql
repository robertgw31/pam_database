-- table: StockCategory
\connect pam
set schema 'public';


drop table if exists stockCategory;
create table stockCategory (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,sortOrder int not null default 0
    ,scope varchar(100) not null
    ,parentId uuid
    ,code varchar(100) not null
    ,friendlyName varchar(100) not null
    ,notes varchar(4000)
    ,isoLanguage varchar(20) not null

);


create unique index stockCategory_idx1 on stockCategory(isoLanguage, scope,parentId,id);
create unique index stockCategory_idx2 on stockCategory(isoLanguage, scope,code);


grant select on stockCategory to pam;

