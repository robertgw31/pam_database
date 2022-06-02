-- table: domainValue
\connect pam
set schema 'public';


drop table if exists domainValue;
create table domainValue (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,createTime timestamptz not null default (now() at time zone 'utc')
    ,domain varchar(200) not null
    ,isoLanguage varchar(10) not null
    ,isoLanguageTag varchar(10) not null
    ,k varchar(200) not null
    ,v varchar(500) not null
    ,notes varchar(1000)  null

);


create unique index domainValue_idx01 on domainValue(isoLanguageTag,domain, k) include(v);


grant select, insert, update, delete on domainValue to pam;


