-- table: asset
\connect pam
set schema  'public';

drop table if exists asset;
create table asset (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,friendlyName varchar(300) not null
	,placeId uuid
    ,placeName varchar(300)
	,categoryId uuid
    ,categoryName varchar(300)
	,ownerName varchar(100)
	,quantity int default 0
	,purchasePrice numeric(12,5)
	,replacementValue numeric(12,5)
	,currencyCode varchar(3)
	,purchaseDate timestamptz
	,purchasedAt varchar(300)
	,make varchar(300)
	,modelName varchar(300)
	,modelNum varchar(100)
	,serialNum varchar(100)

);

create unique index asset_idx_01 on asset(accountId, friendlyName);
create unique index asset_idx_02 on asset(accountId, placeId, friendlyName);


grant select, insert, update, delete on asset to pam;

/*
  DROP FULLTEXT INDEX ON asset

  CREATE FULLTEXT INDEX ON asset
      (
       friendlyName
      ,placeName
      ,categoryName
      ,make
      ,model
      ,modelId
      ,serialNum
      ,ownerName
      ,purchasedAt
      ,notes
      )
      KEY INDEX pk_asset ON pamCat
      WITH (CHANGE_TRACKING AUTO, stoplist = pamStoplist)


*/



