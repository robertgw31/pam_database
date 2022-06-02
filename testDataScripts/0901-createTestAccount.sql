\connect pam
set schema  'public';

$$

DECLARE
  v_testId uuid;
  v_testTimestamp timestamptz;
  v_userLoginId uuid;
  v_accountId uuid;
  v_userAcctId uuid;
  v_tranAuditId uuid;
  v_timestamp timestamptz;
  v_name varchar(200);
  v_email varchar(200);
  v_isoLanguage varchar(20);
  v_notes varchar(4000);
  v_accountStatus varchar(100);

BEGIN
  v_testId = '00000000-0000-0000-0000-000000000000';
  v_testTimestamp = '2000-01-01 00:00:00';
  v_userLoginId  = v_testId;
  v_accountId  = v_testId;
  v_userAcctId  = v_testId;
  v_tranAuditId  = v_testId;
  v_timestamp  = v_testTimestamp;
  v_name  = (select friendlyName from loginUser where id = v_userLoginId);
  v_email = (select email from loginUser where id = v_userLoginId);
  v_isoLanguage  = 'en-us';
  v_notes  = 'Test Account';
  v_accountStatus  = 'PendingEmailVerification';
delete from account;
insert into account(id, friendlyname, ownerUserLoginID, isoLanguage, notes, status,openDate, recVersion,createTranAuditID, updateTranAuditID)
	values(v_accountId, v_name, v_userLoginId, v_isoLanguage, v_notes, v_accountStatus,v_testTimestamp, 1,v_testId, v_testId);

END

$