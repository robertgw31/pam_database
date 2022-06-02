-- table: workTable
\connect pam
set schema 'public';


drop table if exists workTable;
create table workTable (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,createTime timestamptz not null default (now() at time zone 'utc')
    ,tableName varchar(200)
    ,batchId uuid not null
    ,tableRowId uuid not null

);


create unique index workTable_idx01 on workTable(batchId, tableRowId,id);


grant select, insert, update, delete on workTable to pam;


