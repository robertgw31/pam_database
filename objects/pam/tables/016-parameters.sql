-- table: place
\connect pam
set schema 'public';


drop table if exists parameter;
create table parameter (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,environment varchar(50) not null
	,javaType varchar(200)
	,friendlyName varchar(200) not null
	,theValue text not null

);


create unique index parameter_idx_01 on parameter(environment, friendlyName);


grant select, insert, update, delete on parameter to pam;


