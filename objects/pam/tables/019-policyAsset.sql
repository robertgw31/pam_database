-- table: policyAssetCoverage
\connect pam
set schema 'public';


drop table if exists policyAsset;
create table policyAsset (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,policyId uuid not null
	,assetId uuid not null

);

create unique index policyAsset_idx01 on policyAsset(accountId, policyId, sortOrder, assetId);
create unique index policyAsset_idx02 on policyAsset(accountId, assetId, policyId);

grant select, insert, update, delete on policyAsset to pam;


