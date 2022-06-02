-- table: User
\connect pam
set schema 'public';


drop table if exists userLoginEmailHistory;
create table userLoginEmailHistory (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,notes varchar(4000)
    ,sortOrder int not null default 0
    ,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
    ,updateTranAuditID uuid not null
    ,accountId uuid not null
    ,userLoginId uuid not null
    ,email varchar(100) not null
    ,isCurrent boolean not null default false
    ,isVerified boolean not null default false
    ,verificationCode varchar(20)
    ,replacementTimestamp timestamptz not null
    ,verificationTimestamp timestamptz

);
create unique index userLoginEmailHistory_idx_01 on userLoginEmailHistory(userLoginId,isCurrent, replacementTimestamp);


grant select, insert, update, delete on userLoginEmailHistory to pam;

