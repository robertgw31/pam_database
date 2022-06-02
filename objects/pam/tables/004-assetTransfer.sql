-- table: assetTransfer
\connect pam
set schema  'public';

drop table if exists assetTransfer;
create table assetTransfer (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int default 0
	,recVersion bigint not null default 0
  ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,transferType varchar(20) not null
	,isAcquisition boolean not null default false
	,financialTransactionID uuid null
	,assetID uuid not null
	,transferTime timestamptz

);

create unique index assetTransfer_idx_01 on assetTransfer(accountId, id);
create unique index assetTransfer_idx_02 on assetTransfer(accountId, transferTime);
create unique index assetTransfer_idx_03 on assetTransfer(accountId, isAcquisition, transferType,transferTime);


grant select, insert, update, delete on asset to pam;

