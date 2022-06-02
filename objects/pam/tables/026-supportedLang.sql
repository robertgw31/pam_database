-- table: userSession
\connect pam
set schema 'public';


drop table if exists supportedLang;
create table supportedLang (
    isoLanguage varchar(20) not null
    ,iconCls varchar(100)
    ,theValue text not null
    ,constraint pk_supportedLang primary key (isoLanguage)
);




grant select on supportedLang to pam;



