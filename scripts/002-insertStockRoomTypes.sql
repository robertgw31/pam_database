\connect pam
set schema  'public';

DO $$
    BEGIN
        truncate table StockRoomType;

        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('LIVING','en-us','Living Room',1);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('FAMILY','en-us','Family Room',2);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('DINING','en-us','Dining Room',3);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('KITCHEN','en-us','Kitchen',4);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('MASTER-BED','en-us','Master Bedroom',5);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('GUEST-BED-1','en-us','Guest Bedroom 1',6);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('GUEST-BED-2','en-us','Guest Bedroom 2',7);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('MASTER-BATH','en-us','Master Bathroom',8);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('GUEST-BATH','en-us','Guest Bathroom',9);
        insert into StockRoomType(code, isoLanguage, friendlyName, sortOrder) values('OFFICE','en-us','Office',10);
    END
$$