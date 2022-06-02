-- table: asset
\connect pam
set schema 'public';



drop table if exists financialTransactionSource;
create table financialTransactionSource (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,code varchar(100)	 not null

);


grant select, insert, update, delete on financialTransactionSource to pam;

