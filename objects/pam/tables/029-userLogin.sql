-- table: userLogin
\connect pam
set schema 'public';


drop table if exists userLogin;
create table userLogin (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,notes varchar(4000)
    ,sortOrder int not null default 0
    ,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
    ,accountId uuid not null
    ,fullName varchar(200)
    ,email varchar(100) not null
    ,authProvider varchar(100) null
    ,authProviderId varchar(200) null
    ,imageUrl varchar(200) null
    ,loginPassword varchar(100) null
    ,failedLoginAttempts int not null default 0
    ,emailVerified boolean not null default false
    ,lastAccessTimestamp timestamptz
    ,status varchar(100) not null default 'PENDING_EMAIL_VERIFICATION'
    ,statusTimestamp timestamptz not null
    ,isClosed boolean not null default false
    ,isoLanguage varchar(20)
    ,isoCountryCode varchar(20)

);

create unique index userLogin_idx_01 on userLogin(email,isClosed);


grant select, insert, update, delete on userLogin to pam;

