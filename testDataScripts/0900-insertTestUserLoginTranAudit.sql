delete from userlogin where id = '00000000-0000-0000-0000-000000000000';
insert INTO UserLogin(id,notes,sortOrder,recversion,createTranAuditId,updateTranAuditId,
                 accountId,fullname,email,authprovider,authproviderid,imageurl,loginpassword,emailverified,
                 opendate,closedate,lastaccesstimestamp,status,statusdate,isolanguage,isocountrycode)
    values('00000000-0000-0000-0000-000000000000',
           'NOTES',
           0,
           1,
           '00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
            '00000000-0000-0000-0000-000000000000',
           'NAME',
           'email@email.org',
           'provider',
           'provider id',
           'image url',
           'password',
           true,
           '2000-01-01 00:00:00',
           '2000-01-01 00:00:00',
           '2000-01-01 00:00:00',
           'A',
            '2000-01-01 00:00:00',
           'ENG-US',
           'US'    );

delete from usersession where id = '00000000-0000-0000-0000-000000000000';
insert into UserSession(id,accountid,userLoginId,clientMachine,notes,startTime,endTime,isactive,wastimedout)
    values('00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           'clientmachine',
           'notes',
           '2000-01-01 00:00:00',
           '2000-01-01 00:00:00',
           true,
           false);

delete from userrequest where id = '00000000-0000-0000-0000-000000000000';
insert into UserRequest(id,accountId,userSessionId,UserLoginId,requestType,requestdetails,startTime,endTime)
    values('00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           'REQUEST TYPE',
           'REQUEST DETAILS',
            '2000-01-01 00:00:00',
           '2000-01-01 00:00:00');

delete from tranaudit where id = '00000000-0000-0000-0000-000000000000';
insert into tranaudit(id,loginrequestid,userloginid,username,audittimestamp)
    values('00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           '00000000-0000-0000-0000-000000000000',
           'Dummy User',
           '2000-01-01 00:00:00');

