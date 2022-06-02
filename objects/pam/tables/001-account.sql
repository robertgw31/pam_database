\connect pam
set schema  'public';

drop table if exists account;



create table account(
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int default 0
    ,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,friendlyName varchar(200) not null
	,federationID uuid
	,isoLanguage varchar(10)
	,isoCountry varchar(20)
	,ownerUserLoginID uuid not null
    ,status varchar(100) not null
	,statusTimestamp timestamptz not null default (now() at time zone 'utc')
	,inMaintenance boolean not null default false
	,openDate timestamptz not null
    ,isClosed boolean not null default false
	,closeDate timestamptz

);



grant select, insert, update, delete on account to pam;


