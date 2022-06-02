-- trigger: tranaudit_trigger
\connect pam
set schema 'public';



CREATE or replace function update_tranaudit_userloginId()
returns trigger AS
$BODY$
BEGIN
    new.userLoginId := (select r.userLoginID from userRequest r where r.id = new.loginRequestID);
    return new;
END
$BODY$
language plpgsql;


CREATE or replace TRIGGER tranaudit_trigger
  before INSERT ON tranaudit
  FOR EACH ROW
  WHEN ( new.userLoginId is null )
  EXECUTE PROCEDURE update_tranaudit_userloginId();