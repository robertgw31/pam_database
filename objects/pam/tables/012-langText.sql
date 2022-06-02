-- table: userSession
\connect pam
set schema 'public';


drop table if exists langText;
create table langText (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid ()
	,isoLanguage varchar(10) not null
	,mnumonic varchar(100) not null
	,theValue text not null

);

create unique index langText_idx01 on langText(mnumonic, isoLanguage);
create unique index langText_idx02 on langText(isoLanguage, mnumonic);


grant select on langText to pam;



