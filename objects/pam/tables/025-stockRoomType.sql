-- table: StockRoomType
\connect pam
set schema 'public';


drop table if exists stockRoomType;
create table stockRoomType (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,code varchar(100) not null
    ,isoLanguage varchar(10) not null
    ,friendlyName varchar(100) not null
    ,notes varchar(4000)
    ,sortOrder int not null default 0

);


create unique index stockRoomType_idx1 on stockRoomType(isoLanguage, code);
create unique index stockRoomType_idx2 on stockRoomType(isoLanguage, sortOrder, friendlyName);


grant select on stockRoomType to pam;

