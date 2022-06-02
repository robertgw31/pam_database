-- table: entity
\connect pam
set schema 'public';


drop table if exists legalEntity;
create table legalEntity (
   id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
  ,notes varchar(4000)
  ,sortOrder int not null default 0
  ,recVersion bigint not null default 0
  ,createTranAuditID uuid not null
  ,updateTranAuditID uuid not null
  ,accountId uuid not null
  ,email varchar(100)
  ,companyName varchar(100)
  ,firstName varchar(100)
  ,lastName varchar(100)
  ,displayName varchar(100) not null
  ,primaryPhone varchar(100)
  ,alternatePhone varchar(100)
  ,webSite varchar(200)
  ,address1 varchar(100)
  ,address2 varchar(100)
  ,city varchar(100)
  ,provence varchar(100)
  ,postalCode varchar(20)
  ,country varchar(50)
  ,isoCountryCode varchar (10)

);

create index legalEntity_idx_01 on legalEntity(accountId, id);


grant select, insert, update, delete on legalEntity to pam;


