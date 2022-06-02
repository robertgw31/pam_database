\connect pam
set schema  'public';

DO $$
    DECLARE
        v_PAM_SYS_USER varchar(200);
        v_GUID uuid;
        v_TIMESTAMP timestamptz;
    BEGIN
        v_PAM_SYS_USER = 'PAM SYSTEM';
        v_GUID = '00000000-0000-0000-0000-000000000000';
        v_TIMESTAMP = (now() at time zone 'utc');


        truncate table tranAudit;
        insert into tranAudit(id, userName, auditTimeStamp)
        values (v_GUID, v_PAM_SYS_USER, v_TIMESTAMP);

        truncate table account;
        insert into account(id,
                        friendlyname,
                        federationID,
                        isoLanguage,
                        isoCountry,
                        ownerUserLoginID,
                        notes,
                        status,
                        statusDate,
                        inMaintenance,
                        openDate,
                        recVersion,
                        createTranAuditID,
                        updateTranAuditID)
        values (v_GUID,
                'Test Account',
                null,
                'en-us',
                'USA',
                v_GUID,
                null,
                'ACTIVE',
                v_TIMESTAMP,
                false,
                v_TIMESTAMP,
                1,
                v_GUID,
                v_GUID);


        truncate table userlogin;
        insert into userLogin(id,
                        accountId,
                        fullName,
                        email,
                        authProvider,
                        loginPassword,
                        openDate,
                        closeDate,
                        lastAccessTimestamp,
                        status,
                        statusDate,
                        emailVerified,
                        isoLanguage,
                        isoCountryCode,
                        notes,
                        recVersion,
                        createTranAuditID,
                        updateTranAuditID)
        values (v_GUID,
                v_GUID,
                'Robert',
                'robertw@senutech.com',
                'local',
                'masha',
                v_TIMESTAMP,
                null,
                null,
                99,
                v_TIMESTAMP,
                false,
                'en-us',
                'USA',
                null,
                1,
                v_GUID,
                v_GUID);
        END
$$


