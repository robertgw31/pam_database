-- table: roomType
\connect pam
set schema 'public';


drop table if exists roomType;
create table roomType (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,notes varchar(4000)
    ,sortOrder int  default 0
    ,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
    ,updateTranAuditID uuid not null
    ,accountId uuid not null
    ,friendlyName varchar(100) not null

);

create index roomType_idx_01 on category(accountId, friendlyName);


grant select, insert, update, delete on roomType to pam;

