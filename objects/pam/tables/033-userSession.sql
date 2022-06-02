-- table: userSession
\connect pam
set schema 'public';


drop table if exists userSession;
create table userSession (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,accountId uuid not null
    ,userLoginID uuid not null,
    clientMachine varchar(200)
    ,notes varchar(4000)
    ,startTime timestamptz not null
    ,endTime timestamptz
    ,isActive boolean not null default true
    ,wasTimedOut boolean not null default false

);


create unique index userSession_idx01 on userSession(userLoginID, startTime,isActive,id);
create unique index userSession_idx02 on userSession(startTime,userLoginID,isActive,id);

grant select, insert, update, delete on userSession to pam;


