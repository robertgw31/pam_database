-- table: place
\connect pam
set schema 'public';


drop table if exists place;
create table place (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
    ,stockRoomId uuid
	,notes varchar(4000)
	,sortOrder int not null default 0
	,recVersion bigint not null default 0
    ,createTranAuditID uuid not null
	,updateTranAuditID uuid not null
	,accountId uuid not null
	,parentId uuid
	,friendlyName varchar(300) not null
	,placeType varchar(20) not null
	,address1 varchar(100)
	,address2 varchar(100)
	,city varchar(100)
	,provence varchar(100)
	,country varchar(100)
	,postalCode varchar(100)


);


create unique index place_idx_02 on place(accountId, parentId, friendlyName);


grant select, insert, update, delete on place to pam;

/*

CREATE FULLTEXT INDEX ON place
    (
     friendlyName
        ,placeType
        ,address1
        ,address2
        ,city
        ,provence
        ,country
        ,postalCode
        ,notes
        )
    KEY INDEX pk_place ON pamCat
    WITH (CHANGE_TRACKING AUTO, stoplist = pamStoplist)

    */


