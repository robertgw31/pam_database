\connect pam
set schema  'public';

$$

    DECLARE
        v_tranAuditId uuid;
        v_userLoginId uuid;
        v_accountId uuid;
        v_policyId uuid;
        v_primaryResidencePlaceId uuid;
        v_firstFloorPlaceId uuid;
        v_livingRoomPlaceId uuid;
        v_furnitureCategory uuid;
        v_purchaseDate timestamptz;
        v_timestamp timestamptz;
        v_id uuid;

    BEGIN
        v_policyId uuid = negen_random_uuid();;
        v_purchaseDate timestamptz = (now() at time zone 'utc')();
        v_timestamp timestamptz = (now() at time zone 'utc')();
        v_tranAuditId = (select top 1 id from tranAudit order by auditTimeStamp)
        v_userLoginId = (select id from userLogin where email = 'testerv_senutech.com';
        v_accountID = (select id from account where ownerUserLoginID = v_userLoginId;
        v_purchaseDate = (select dateadd(d,-1000,v_timestamp);
        v_policyId = (select id from policy where accountid = v_accountId;
        v_primaryResidencePlaceId = (select id from place where accountId = v_accountId and placeType = 'BUILDING' and friendlyName = 'Primary Residence';
        v_firstFloorPlaceid = (select id from place where accountId = v_accountId and placeType = 'FLOOR' and parentId = v_primaryResidencePlaceId and friendlyName = 'First Floor';
        v_livingRoomPlaceId = (select id from place where accountId = v_accountId and placeType = 'ROOM' and parentId = v_firstFloorPlaceid and friendlyName = 'Living Room';


        delete from category where accountId = v_accountId;
        delete from asset where accountId = v_accountId;
        delete from policyAsset where accountId = v_accountId

        insert into category(accountid,scope,friendlyName,recVersion,createTranAuditID,updateTranAuditID)
            output inserted.id into v_idTable
        values(v_accountId,'ASSETS','Furniture',1,v_tranAuditId,v_tranAuditId)
        v_furnitureCategory = v_id 

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);


        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 2', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 2', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 2', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 3', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 3', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 3', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 4', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 4', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 4', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 5', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 5', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 5', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);


        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 6', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 6', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 6', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);


        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 7', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 7', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 7', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);


        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Sofa 8', 'Acme Furniture', 'Excelsior',3020.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Love Seat 8', 'Acme Furniture', 'Excelsior',2130.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);

        insert into asset(accountId, placeId, categoryId, friendlyName, make, model,  purchasePrice, purchaseDate, purchasedAt, recVersion,createTranAuditID,updateTranAuditID)
        values(v_accountId, v_livingRoomPlaceId, v_furnitureCategory, 'Chair 8', 'Acme Furniture', 'Excelsior',1030.00, v_purchaseDate,'Flanegan',1,v_tranAuditId,v_tranAuditId);


        update a set
            categoryName = c.friendlyName
        from
            asset a
            join category c on c.id = a.categoryId;

        update a set
            placeName = p.friendlyName
        from
            asset a
                join place p on p.id = a.placeId;
    END

$$

