-- table: userRequest
\connect pam
set schema 'public';


drop table if exists userRequest;
create table userRequest (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,accountId uuid not null
    ,userSessionID uuid  not null
    ,userLoginID uuid not null
    ,requestType varchar(100) not null
    ,requestDetails varchar(500)
    ,startTime timestamptz not null
    ,endTime timestamptz not null

);

create unique index userRequest_idx01 on userRequest(userSessionID, startTime);
create unique index userRequest_idx02 on userRequest(startTime,userSessionID);
create unique index userRequest_idx03 on userRequest(userLoginID, startTime);
create unique index userRequest_idx04 on userRequest(startTime,userLoginID);
create unique index userRequest_idx05 on userRequest(requestType,startTime);
grant select, insert, update, delete on userRequest to pam;


