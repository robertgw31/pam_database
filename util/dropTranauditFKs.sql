-- Account
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_create_tran_fk;
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_update_tran_fk;

-- AccountInsurer
ALTER TABLE accountinsurer DROP CONSTRAINT IF EXISTS accountinsurer_create_tran_fk;
ALTER TABLE accountinsurer DROP CONSTRAINT IF EXISTS accountinsurer_update_tran_fk;

-- Asset
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_create_tran_fk;
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_update_tran_fk;


-- AssetTransfer
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_create_tran_fk;
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_update_tran_fk;


-- Attachment
ALTER TABLE attachment DROP CONSTRAINT IF EXISTS attachment_create_tran_fk;
ALTER TABLE attachment DROP CONSTRAINT IF EXISTS attachment_update_tran_fk;

-- AttachmentLink
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_create_tran_fk;
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_update_tran_fk;


-- Category
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_create_tran_fk;
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_update_tran_fk;


-- Controls

-- DomainValue

-- Federation
ALTER TABLE federation DROP CONSTRAINT IF EXISTS federation_create_tran_fk;
ALTER TABLE federation DROP CONSTRAINT IF EXISTS federation_update_tran_fk;

-- FinancialTransaction
ALTER TABLE financialtransaction DROP CONSTRAINT IF EXISTS financialtransaction_create_tran_fk;
ALTER TABLE financialtransaction DROP CONSTRAINT IF EXISTS financialtransaction_update_tran_fk;


-- FinancialTransactionSource

-- LangText

-- LegalEntiy
ALTER TABLE legalentity DROP CONSTRAINT IF EXISTS legalentity_create_tran_fk;
ALTER TABLE legalentity DROP CONSTRAINT IF EXISTS legalentity_update_tran_fk;


-- LegalEntityLink
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_create_tran_fk;
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_update_tran_fk;



-- LegalEntityRole
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS legalentityRole_create_tran_fk;
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS LegalEntityRole_update_tran_fk;



-- Parameter

-- Place
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_create_tran_fk;
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_update_tran_fk;



-- Policy
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_create_tran_fk;
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_update_tran_fk;




-- PolicyAsset
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_create_tran_fk;
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_update_tran_fk;




-- PolicyPlace
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_create_tran_fk;
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_update_tran_fk;




-- Purchase
ALTER TABLE Purchase DROP CONSTRAINT IF EXISTS Purchase_create_tran_fk;
ALTER TABLE Purchase DROP CONSTRAINT IF EXISTS Purchase_update_tran_fk;


-- PurchaseAsset
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_create_tran_fk;
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_update_tran_fk;




-- RoomType
ALTER TABLE RoomType DROP CONSTRAINT IF EXISTS RoomType_create_tran_fk;
ALTER TABLE RoomType DROP CONSTRAINT IF EXISTS RoomType_update_tran_fk;


-- Scan
ALTER TABLE Scan DROP CONSTRAINT IF EXISTS Scan_create_tran_fk;
ALTER TABLE Scan DROP CONSTRAINT IF EXISTS Scan_update_tran_fk;


-- StockCategory

-- StockRoomType

-- SupportedLang

-- TranAudit



-- UserLogin
ALTER TABLE UserLogin DROP CONSTRAINT IF EXISTS UserLogin_create_tran_fk;
ALTER TABLE UserLogin DROP CONSTRAINT IF EXISTS UserLogin_update_tran_fk;


-- UserLoginEmailHistory
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_create_tran_fk;
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_update_tran_fk;



-- UserLoginPasswordHistory
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_create_tran_fk;
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_update_tran_fk;



-- UserRequest




-- UserSession



-- WorkTable
