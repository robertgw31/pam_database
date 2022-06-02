\connect pam
set schema  'public';

DO $$
    DECLARE
         v_allCategoryId  uuid;
    BEGIN
        v_allCategoryId = gen_random_uuid ();
        truncate table StockCategory;

        -- insert into StockCategory(id, scope,code, isoLanguage, friendlyName, sortOrder) values(v_allCategoryId, 'ASSET','ALL','en-us','Everything',1);

        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','ARTWORK','en-us','Artwork',1, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','BEDDING','en-us','Bedding/Drapes/Linens',2, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','PUBLICATIONS','en-us','Books/CDs/DVDs/Tapes',3, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','CAMERAS','en-us','Cameras',4, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','CLOTHING','en-us','Clothing',5, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','COLLECTIBLES','en-us','Collectibles',6, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','COMPUTERS','en-us','Computers',7, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','COOKING','en-us','Cooking',8, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','CUTLERY','en-us','Cutlery/Silverware',9, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','DISHES','en-us','Dishes/Fine China',10, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','ELECTRONICS','en-us','Electronics',11, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','FURNITURE','en-us','Furniture',12, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','FURS','en-us','Furs',13, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','GARDENING','en-us','Gardening',14, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','GLASS','en-us','Glass/Crystal',15, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','JEWLRY','en-us','Jewelry',16, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','LAMPS','en-us','Lamps',17, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','MAJOR-APPLIANCES','en-us','Major Appliances',18, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','MISC','en-us','Miscelaneous',19, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','MUSIC-INSTRUMENTS','en-us','Musical Instruments',20, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','OTHER','en-us','Other',21, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','PATIO','en-us','Patio Furniture and Grills',22, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','RUGS','en-us','Rugs',1, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','SMALL-APPLIANCES','en-us','Small Appliances',23, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','SPORTS','en-us','Sports',24, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','TOOLS','en-us','Tools',25, v_allCategoryId );
        insert into StockCategory(scope,code, isoLanguage, friendlyName, sortOrder, parentId) values('ASSET','TOYS','en-us','Toys',26, v_allCategoryId );
    END
$$;