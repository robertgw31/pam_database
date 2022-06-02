-- table: place
\connect pam
set schema 'public';


drop table if exists controls;
create table controls (
	id int not null default 1 CHECK (id =1) primary key
	,envID varchar(50) not null
	,envName varchar(200) not null
    ,federationID varchar
	,passwordKey bytea
);



grant select, insert, update, delete on controls to pam;


