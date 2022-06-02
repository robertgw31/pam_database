-- table: asset
\connect pam
set schema 'public';


drop table if exists purchase;
create table purchase (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,dataSource varchar(200) not null
	,transactionDate timestamptz
	,paymentType varchar(200) not null
	,creditCardHolder varchar(300)
	,creditCardType varchar(300)
	,creditCardNumber varchar(100)
	,creditCardExpirationMoYear varchar(4)
	,creditCardCSV varchar(10)
	,purchaseAmount numeric(12,2) not null
	,currencyCode varchar(3) not null

);

create unique index purchase_idx_01 on purchase(accountId, id);



grant select, insert, update, delete on asset to pam;

