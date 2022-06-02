-- table: account
\connect pam
set schema 'public';


drop table if exists tranAudit;
create table tranAudit (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,loginRequestID uuid
    ,userLoginId uuid
    ,userName varchar(100)
    ,auditTimeStamp timestamptz not null default (now() at time zone 'utc')
    , constraint chk_tranAudit check(userLoginId is not null or userName is not null or loginRequestID is not null)

);


grant select, insert, update, delete on tranAudit  to pam;
