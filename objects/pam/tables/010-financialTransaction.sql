-- table: asset
\connect pam
set schema 'public';


drop table if exists financialTransaction;
create table financialTransaction (
	 id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,notes varchar(4000)
	,sortOrder int  default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,transactionType varchar(10) not null
    ,debitCredit varchar(10) not null
	,transactionTime timestamptz
	,amount numeric(12,5) not null
	,currencyCode varchar(3) not null

);

create unique index financialTransaction_idx_01 on financialTransaction(accountId, id);
create unique index financialTransaction_idx_02 on financialTransaction(accountId, transactionTime);
create unique index financialTransaction_idx_03 on financialTransaction(accountId, transactionType,transactionTime);


grant select, insert, update, delete on financialTransaction to pam;

