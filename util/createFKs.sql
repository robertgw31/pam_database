-- Account
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_create_tran_fk;
ALTER TABLE account
    add CONSTRAINT account_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_update_tran_fk;
ALTER TABLE account
    add CONSTRAINT account_update_tran_fk foreign KEY(updatetranauditid) references tranaudit
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_federation_fk;
ALTER TABLE account
    add CONSTRAINT account_federation_fk foreign key(federationid) references federation(id);
ALTER TABLE account DROP CONSTRAINT IF EXISTS account_owneruserlogin_fk;
ALTER TABLE account
    add CONSTRAINT account_owneruserlogin_fk foreign key(owneruserloginid) references userLogin(id);

-- AccountInsurer
ALTER TABLE accountinsurer DROP CONSTRAINT IF EXISTS accountinsurer_create_tran_fk;
ALTER TABLE accountinsurer
    add CONSTRAINT accountinsurer_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE accountinsurer DROP CONSTRAINT IF EXISTS accountinsurer_update_tran_fk;
ALTER TABLE accountinsurer
    add CONSTRAINT accountinsurer_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;

-- Asset
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_create_tran_fk;
ALTER TABLE asset
    add CONSTRAINT asset_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_update_tran_fk;
ALTER TABLE asset
    add CONSTRAINT asset_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_account_fk;
ALTER TABLE asset
    add CONSTRAINT asset_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_place_fk;
ALTER TABLE asset
    add CONSTRAINT asset_place_fk foreign key(accountid) references place(id) ;
ALTER TABLE asset DROP CONSTRAINT IF EXISTS asset_category_fk;
ALTER TABLE asset
    add CONSTRAINT asset_category_fk foreign key(accountid) references Category(id) ;      

-- AssetTransfer
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_create_tran_fk;
ALTER TABLE assettransfer
    add CONSTRAINT assettransfer_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_update_tran_fk;
ALTER TABLE assettransfer
    add CONSTRAINT assettransfer_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_account_fk;
ALTER TABLE assettransfer
    add CONSTRAINT assettransfer_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE assettransfer DROP CONSTRAINT IF EXISTS assettransfer_financialtransaction_fk;
ALTER TABLE assettransfer
    add CONSTRAINT assettransfer_financialtransaction_fk foreign key(financialtransactionid) references financialtransaction(id) ;

-- Attachment
ALTER TABLE attachment DROP CONSTRAINT IF EXISTS attachment_create_tran_fk;
ALTER TABLE attachment
    add CONSTRAINT attachment_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE attachment DROP CONSTRAINT IF EXISTS attachment_update_tran_fk;
ALTER TABLE attachment
    add CONSTRAINT attachment_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;

-- AttachmentLink
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_create_tran_fk;
ALTER TABLE attachmentlink
    add CONSTRAINT attachmentlink_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_update_tran_fk;
ALTER TABLE attachmentlink
    add CONSTRAINT attachmentlink_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_account_fk;
ALTER TABLE attachmentlink
    add CONSTRAINT attachmentlink_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE attachmentlink DROP CONSTRAINT IF EXISTS attachmentlink_attachment_fk;
ALTER TABLE attachmentlink
    add CONSTRAINT attachmentlink_attachment_fk foreign key(attachmentid) references attachment(id) ;

-- Category
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_create_tran_fk;
ALTER TABLE category
    add CONSTRAINT category_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_update_tran_fk;
ALTER TABLE category
    add CONSTRAINT category_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_account_fk;
ALTER TABLE category
    add CONSTRAINT category_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE category DROP CONSTRAINT IF EXISTS category_stockcategory_fk;
ALTER TABLE category
    add CONSTRAINT category_stockcategory_fk foreign key(stockcategoryid) references stockcategory(id) ;
-- Controls

-- DomainValue

-- Federation
ALTER TABLE federation DROP CONSTRAINT IF EXISTS federation_create_tran_fk;
ALTER TABLE federation
    add CONSTRAINT federation_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE federation DROP CONSTRAINT IF EXISTS federation_update_tran_fk;
ALTER TABLE federation
    add CONSTRAINT federation_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;

-- FinancialTransaction
ALTER TABLE financialtransaction DROP CONSTRAINT IF EXISTS financialtransaction_create_tran_fk;
ALTER TABLE financialtransaction
    add CONSTRAINT financialtransaction_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE financialtransaction DROP CONSTRAINT IF EXISTS financialtransaction_update_tran_fk;
ALTER TABLE financialtransaction
    add CONSTRAINT financialtransaction_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE financialtransaction DROP CONSTRAINT IF EXISTS financialtransaction_account_fk;
ALTER TABLE financialtransaction
    add CONSTRAINT financialtransaction_account_fk foreign key(accountid) references account(id) ;

-- FinancialTransactionSource

-- LangText

-- LegalEntiy
ALTER TABLE legalentity DROP CONSTRAINT IF EXISTS legalentity_create_tran_fk;
ALTER TABLE legalentity
    add CONSTRAINT legalentity_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE legalentity DROP CONSTRAINT IF EXISTS legalentity_update_tran_fk;
ALTER TABLE legalentity
    add CONSTRAINT legalentity_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE legalentity DROP CONSTRAINT IF EXISTS legalentity_account_fk;
ALTER TABLE legalentity
    add CONSTRAINT legalentity_account_fk foreign key(accountid) references account(id) ;

-- LegalEntityLink
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_create_tran_fk;
ALTER TABLE legalentitylink
    add CONSTRAINT legalentitylink_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_update_tran_fk;
ALTER TABLE legalentitylink
    add CONSTRAINT legalentitylink_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_account_fk;
ALTER TABLE legalentitylink
    add CONSTRAINT legalentitylink_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE legalentitylink DROP CONSTRAINT IF EXISTS legalentitylink_legalentity_fk;
ALTER TABLE legalentitylink
    add CONSTRAINT legalentitylink_legalentity_fk foreign key(accountid) references legalentity(id) ;

-- LegalEntityRole
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS legalentityRole_create_tran_fk;
ALTER TABLE legalentityRole
    add CONSTRAINT LegalEntityRole_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS LegalEntityRole_update_tran_fk;
ALTER TABLE legalentityRole
    add CONSTRAINT LegalEntityRole_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS LegalEntityRole_account_fk;
ALTER TABLE legalentityRole
    add CONSTRAINT LegalEntityRole_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE legalentityRole DROP CONSTRAINT IF EXISTS LegalEntityRole_legalentity_fk;
ALTER TABLE legalentityRole
    add CONSTRAINT LegalEntityRole_legalentity_fk foreign key(accountid) references legalentity(id) ;

-- Parameter

-- Place
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_create_tran_fk;
ALTER TABLE Place
    add CONSTRAINT Place_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_update_tran_fk;
ALTER TABLE Place
    add CONSTRAINT Place_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_account_fk;
ALTER TABLE Place
    add CONSTRAINT Place_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE Place DROP CONSTRAINT IF EXISTS Place_Place_fk;
ALTER TABLE Place
    add CONSTRAINT Place_Place_fk foreign key(parentid) references Place(id) ;

-- Policy
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_create_tran_fk;
ALTER TABLE Policy
    add CONSTRAINT Policy_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_update_tran_fk;
ALTER TABLE Policy
    add CONSTRAINT Policy_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_account_fk;
ALTER TABLE Policy
    add CONSTRAINT Policy_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_Policy_fk;
ALTER TABLE Policy
    add CONSTRAINT Policy_Policy_fk foreign key(parentId) references Policy(id) ;
ALTER TABLE Policy DROP CONSTRAINT IF EXISTS Policy_AccountInsure_fk;
ALTER TABLE Policy
    add CONSTRAINT Policy_AccountInsure_fk foreign key(parentid) references AccountInsurer(id) ;

-- PolicyAsset
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_create_tran_fk;
ALTER TABLE PolicyAsset
    add CONSTRAINT PolicyAsset_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_update_tran_fk;
ALTER TABLE PolicyAsset
    add CONSTRAINT PolicyAsset_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_account_fk;
ALTER TABLE PolicyAsset
    add CONSTRAINT PolicyAsset_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_policy_fk;
ALTER TABLE PolicyAsset
    add CONSTRAINT PolicyAsset_policy_fk foreign key(accountid) references policy(id) ;
ALTER TABLE PolicyAsset DROP CONSTRAINT IF EXISTS PolicyAsset_asset_fk;
ALTER TABLE PolicyAsset
    add CONSTRAINT PolicyAsset_asset_fk foreign key(accountid) references asset(id) ;

-- PolicyPlace
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_create_tran_fk;
ALTER TABLE PolicyPlace
    add CONSTRAINT PolicyPlace_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_update_tran_fk;
ALTER TABLE PolicyPlace
    add CONSTRAINT PolicyPlace_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_account_fk;
ALTER TABLE PolicyPlace
    add CONSTRAINT PolicyPlace_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_policy_fk;
ALTER TABLE PolicyPlace
    add CONSTRAINT PolicyPlace_policy_fk foreign key(accountid) references policy(id) ;
ALTER TABLE PolicyPlace DROP CONSTRAINT IF EXISTS PolicyPlace_place_fk;
ALTER TABLE PolicyPlace
    add CONSTRAINT PolicyPlace_place_fk foreign key(accountid) references place(id);


-- Purchase
ALTER TABLE Purchase DROP CONSTRAINT IF EXISTS Purchase_create_tran_fk;
ALTER TABLE Purchase
    add CONSTRAINT Purchase_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE Purchase DROP CONSTRAINT IF EXISTS Purchase_update_tran_fk;
ALTER TABLE Purchase
    add CONSTRAINT Purchase_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE Purchase DROP CONSTRAINT IF EXISTS Purchase_account_fk;
ALTER TABLE Purchase
    add CONSTRAINT Purchase_account_fk foreign key(accountid) references account(id) ;

-- PurchaseAsset
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_create_tran_fk;
ALTER TABLE PurchaseAsset
    add CONSTRAINT PurchaseAsset_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_update_tran_fk;
ALTER TABLE PurchaseAsset
    add CONSTRAINT PurchaseAsset_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_account_fk;
ALTER TABLE PurchaseAsset
    add CONSTRAINT PurchaseAsset_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_Purchase_fk;
ALTER TABLE PurchaseAsset
    add CONSTRAINT PurchaseAsset_Purchase_fk foreign key(accountid) references purchase(id) ;
ALTER TABLE PurchaseAsset DROP CONSTRAINT IF EXISTS PurchaseAsset_Asset_fk;
ALTER TABLE PurchaseAsset
    add CONSTRAINT PurchaseAsset_Asset_fk foreign key(accountid) references asset(id) ;

-- RoomType
ALTER TABLE RoomType DROP CONSTRAINT IF EXISTS RoomType_create_tran_fk;
ALTER TABLE RoomType
    add CONSTRAINT RoomType_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE RoomType DROP CONSTRAINT IF EXISTS RoomType_update_tran_fk;
ALTER TABLE RoomType
    add CONSTRAINT RoomType_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE RoomType DROP CONSTRAINT IF EXISTS RoomType_account_fk;
ALTER TABLE RoomType
    add CONSTRAINT RoomType_account_fk foreign key(accountid) references account(id) ;

-- Scan
ALTER TABLE Scan DROP CONSTRAINT IF EXISTS Scan_create_tran_fk;
ALTER TABLE Scan
    add CONSTRAINT Scan_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE Scan DROP CONSTRAINT IF EXISTS Scan_update_tran_fk;
ALTER TABLE Scan
    add CONSTRAINT Scan_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE Scan DROP CONSTRAINT IF EXISTS Scan_account_fk;
ALTER TABLE Scan
    add CONSTRAINT Scan_account_fk foreign key(accountid) references account(id) ;

-- StockCategory

-- StockRoomType

-- SupportedLang

-- TranAudit
ALTER TABLE TranAudit DROP CONSTRAINT IF EXISTS TransAudit_loginrequest_fk;
ALTER TABLE TranAudit
    add CONSTRAINT TransAudit_loginrequest_fk foreign key(loginrequestid) references userrequest(id) ;
ALTER TABLE TranAudit DROP CONSTRAINT IF EXISTS TransAudit_userlogin_fk;
ALTER TABLE TranAudit
    add CONSTRAINT TransAudit_userlogin_fk foreign key(userloginId) references userlogin(id);

-- UserLogin
ALTER TABLE UserLogin DROP CONSTRAINT IF EXISTS UserLogin_create_tran_fk;
ALTER TABLE UserLogin
    add CONSTRAINT UserLogin_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE UserLogin DROP CONSTRAINT IF EXISTS UserLogin_update_tran_fk;
ALTER TABLE UserLogin
    add CONSTRAINT UserLogin_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE UserLogin DROP CONSTRAINT IF EXISTS UserLogin_account_fk;
ALTER TABLE UserLogin
    add CONSTRAINT UserLogin_account_fk foreign key(accountid) references account(id) ;

-- UserLoginEmailHistory
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_create_tran_fk;
ALTER TABLE UserLoginEmailHistory
    add CONSTRAINT UserLoginEmailHistory_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_update_tran_fk;
ALTER TABLE UserLoginEmailHistory
    add CONSTRAINT UserLoginEmailHistory_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_account_fk;
ALTER TABLE UserLoginEmailHistory
    add CONSTRAINT UserLoginEmailHistory_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE UserLoginEmailHistory DROP CONSTRAINT IF EXISTS UserLoginEmailHistory_userlogin_fk;
ALTER TABLE UserLoginEmailHistory
    add CONSTRAINT UserLoginEmailHistory_userlogin_fk foreign key(accountid) references userlogin(id) ;

-- UserLoginPasswordHistory
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_create_tran_fk;
ALTER TABLE UserLoginPasswordHistory
    add CONSTRAINT UserLoginPasswordHistory_create_tran_fk foreign KEY(createtranauditid) references tranaudit;
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_update_tran_fk;
ALTER TABLE UserLoginPasswordHistory
    add CONSTRAINT UserLoginPasswordHistory_update_tran_fk foreign KEY(updatetranauditid) references tranaudit;
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_account_fk;
ALTER TABLE UserLoginPasswordHistory
    add CONSTRAINT UserLoginPasswordHistory_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE UserLoginPasswordHistory DROP CONSTRAINT IF EXISTS UserLoginPasswordHistory_userlogin_fk;
ALTER TABLE UserLoginPasswordHistory
    add CONSTRAINT UserLoginPasswordHistory_userlogin_fk foreign key(accountid) references userlogin(id) ;

-- UserRequest
ALTER TABLE UserRequest DROP CONSTRAINT IF EXISTS UserRequest_account_fk;
ALTER TABLE UserRequest
    add CONSTRAINT UserRequest_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE UserRequest DROP CONSTRAINT IF EXISTS UserRequest_usersession_fk;
ALTER TABLE UserRequest
    add CONSTRAINT UserRequest_usersession_fk foreign key(accountid) references userSession(id) ;
ALTER TABLE UserRequest DROP CONSTRAINT IF EXISTS UserRequest_userlogin_fk;
ALTER TABLE UserRequest
    add CONSTRAINT UserRequest_userlogin_fk foreign key(accountid) references userlogin(id) ;

-- UserSession
ALTER TABLE UserRequest DROP CONSTRAINT IF EXISTS UserRequest_account_fk;
ALTER TABLE UserRequest
    add CONSTRAINT UserRequest_account_fk foreign key(accountid) references account(id) ;
ALTER TABLE UserRequest DROP CONSTRAINT IF EXISTS UserRequest_userlogin_fk;
ALTER TABLE UserRequest
    add CONSTRAINT UserRequest_userlogin_fk foreign key(accountid) references userlogin(id) ;

-- WorkTable


