-- table: asset
\connect pam
set schema 'public';


drop table if exists purchaseAsset;
create table purchaseAsset (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,purchaseID uuid not null
	,assetID uuid not null

);

create unique index purchaseAsset_idx_01 on purchaseAsset(accountId, id);
create unique index purchaseAsset_idx_02 on purchaseAsset(accountId, purchaseID, sortOrder, assetID);
create unique index purchaseAsset_idx_03 on purchaseAsset(accountId, assetID, sortOrder, purchaseID);


grant select, insert, update, delete on asset to pam;

