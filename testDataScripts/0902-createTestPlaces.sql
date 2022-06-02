\connect pam
set schema  'public';

$$

	DECLARE

	declare v_tranAuditId uuid;
	declare v_userLoginId uuid;
	declare v_accountId uuid;
	declare v_residencePlaceId uuid;
	declare v_secondFloorPlaceid uuid;
	declare v_firstFloorPlaceId uuid;
	declare v_basementPlaceId uuid;
	declare v_timestamp timestamptz;

	declare v_id uuid;


	BEGIN
		v_timestamp  = (now() at time zone 'utc');
	 	v_tranAuditId = (select top 1 id from tranAudit order by auditTimeStamp)
		v_userLoginId = (select id from userLogin where email = 'testerv_senutech.com');
		v_accountId = (selectr id from account where ownerUserLoginID = v_userLoginId);

		-- HOUSE

		delete from place where accountId = v_accountId;

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			address1,
			address2,
			city,
			provence,
			country,
			postalCode,
			notes,
		version,
			createTranAuditID,
			updateTranAuditID)
		output inserted.id into v_id;
		values(v_accountId,null,1,'Primary Residence', 'BUILDING', '1 Sycamore Street',null,'PleasentVille','NY','US','11234', 'This is my main residence',
				1,v_tranAuditId,v_tranAuditId)
		select v_residencePlaceId = id from v_id

		-- SECOND FLOOR
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
		version,
			createTranAuditID,
			updateTranAuditID)
		output inserted.id into v_id
		values(v_accountId,v_residencePlaceId,2,'Second Floor', 'FLOOR',
					1,v_tranAuditId,v_tranAuditId);
		select v_secondFloorPlaceid = id from v_id

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
		createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_secondFloorPlaceid,1,'Master Bedroom', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_secondFloorPlaceid,2,'Bedroom 1', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_secondFloorPlaceid,3,'Bedroom 2', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
			

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_secondFloorPlaceid,4,'Bedroom 3', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
			
		-- FIRST FLOOR
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		output inserted.id into v_id
		values(v_accountId,v_residencePlaceId,1,'First Floor', 'FLOOR',
					1,v_tranAuditId,v_tranAuditId);
		select v_firstFloorPlaceid = id from v_id


		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_firstFloorPlaceid,1,'Living Room', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_firstFloorPlaceid,2,'Dining Room', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
			
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_firstFloorPlaceid,3,'Kitchen', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

			
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_firstFloorPlaceid,4,'Sun Room', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_firstFloorPlaceid,5,'Library', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
			
		-- BASEMENT
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		output inserted.id into  v_id
		values(v_accountId,v_residencePlaceId,3,'Basement', 'FLOOR',
					1,v_tranAuditId,v_tranAuditId);
		select v_basementPlaceid = id from v_id


		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_basementPlaceid,2,'Family Room', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);
			
		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_basementPlaceid,2,'Home Theatre', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

		insert into place(
			accountId,
			parentId,
		sortOrder,
			name,
			placeType,
			version,
			createTranAuditID,
			updateTranAuditID)
		values(v_accountId,v_basementPlaceid, 3,'Excercise Room', 'ROOM',
					1,v_tranAuditId,v_tranAuditId);

	END

$$