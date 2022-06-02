\connect pam
set schema  'public';

do $$

  DECLARE
    v_GUID uuid;
    v_PAM_SYS_USER varchar(100);
    v_TIMESTAMP timestamptz;

  BEGIN

    v_GUID  = gen_random_uuid ();
    v_PAM_SYS_USER  = 'pamuser';
    v_TIMESTAMP  = (now() at time zone 'utc');

    truncate table tranAudit;

    insert into tranAudit(id, userName, auditTimeStamp)
      values (v_GUID, v_PAM_SYS_USER, v_TIMESTAMP);

    truncate table domainValue;

    insert into domainValue(domain,isoLanguage,isoLanguageTag,k,v)
      values('propertyNodeType','en','en-US','asset','Asset' );

    insert into domainValue(domain,isoLanguage,isoLanguageTag,k,v)
      values('propertyNodeType','en','en-US','place','Location' );

  END

$$