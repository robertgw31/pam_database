\connect pam
set schema 'public';

-- category
alter table dbo.category add constraint fk_category_category foreign key(parentCategoryId) references category(id);

--- account
alter table dbo.account add constraint fk_account_federation foreign key(federationID)     references dbo.federation(id);
alter table dbo.account add constraint fk_account_userOwner  foreign key(ownerUserLoginID) references dbo.userLogin(id);

-- accountInsurer
alter table accountInsurer add constraint fk_accountInsurer_account foreign key(accountId) references dbo.account(id);

-- asset
alter table dbo.asset add constraint fk_asset_account  foreign key(accountId)  references dbo.account(id);
alter table dbo.asset add constraint fk_asset_place    foreign key(placeId)    references dbo.place(id);
alter table dbo.asset add constraint fk_asset_category foreign key(categoryId) references dbo.category(id);

-- assetTransfer
alter table dbo.assetTransfer add constraint fk_assetTransfer_account              foreign key(accountId) references dbo.account(id);
alter table dbo.assetTransfer add constraint fk_assetTransfer_financialTransaction foreign key(accountId) references dbo.financialTransaction(id);
alter table dbo.assetTransfer add constraint fk_assetTransfer_asset                foreign key(assetId)   references dbo.asset(id);

-- attachment
alter table dbo.attachment add constraint fk_attachment_account foreign key(accountId) references dbo.account(id);

-- attachmnentLink
alter table dbo.attachmentLink add constraint fk_attachmentLink_account    foreign key(accountId)    references dbo.account(id);
alter table dbo.attachmentLink add constraint fk_attachmentLink_attachment foreign key(attachmentId) references dbo.attachment(id);

-- financialTransaction
alter table dbo.financialTransaction add constraint fk_financialTransaction_account foreign key(accountId) references dbo.account(id);

-- legalEntity
alter table dbo.legalEntity add constraint fk_legalEntity_account foreign key(accountId) references dbo.account(id);

-- legalEntityLink
alter table dbo.legalEntityLink add constraint fk_legalEntityLink_account     foreign key(legalEntityId) references dbo.account(id);
alter table dbo.legalEntityLink add constraint fk_legalEntityLink_legalEntity foreign key(legalEntityId) references dbo.legalEntity(id);


-- legalEntityRole
alter table dbo.legalEntityRole add constraint fk_legalEntityRole_account     foreign key(accountId) references dbo.account(id);
alter table dbo.legalEntityRole add constraint fk_legalEntityRole_legalEntity foreign key(legalEntityId) references dbo.legalEntity(id);

-- place
alter table dbo.place add constraint fk_place_account foreign key(accountId) references dbo.account(id);
alter table dbo.place add constraint fk_place_place   foreign key(parentId)  references dbo.place(id);

-- policy
alter table dbo.policy add constraint fk_policy_account        foreign key(accountId)        references dbo.account(id);
alter table dbo.policy add constraint fk_policy_place          foreign key(parentPolicyId)   references dbo.policy(id);
alter table dbo.policy add constraint fk_policy_accountInsurer foreign key(accountInsurerID) references dbo.accountInsurer(id);

-- policyAsset
alter table dbo.policyAsset add constraint fk_policyAsset_account foreign key(accountId) references dbo.account(id);
alter table dbo.policyAsset add constraint fk_policyAsset_policy  foreign key(policyId)  references dbo.policy(id);
alter table dbo.policyAsset add constraint fk_policyAsset_asset   foreign key(assetId)   references dbo.asset(id);

-- policyPlace
alter table dbo.policyPlace add constraint fk_policyPlace_account foreign key(accountId) references dbo.account(id);
alter table dbo.policyPlace add constraint fk_policyPlace_policy  foreign key(policyId)  references dbo.policy(id);
alter table dbo.policyPlace add constraint fk_policyPlace_place   foreign key(placeId)   references dbo.place(id);

-- purchase
alter table dbo.purchase   add constraint fk_purchase_account    foreign key(accountId) references dbo.account(id);

-- purchaseAsset
alter table dbo.purchaseAsset add constraint fk_purchaseAsset_account foreign key(accountId) references dbo.account(id);
alter table dbo.purchaseAsset add constraint fk_purchaseAsset_purchase foreign key(purchaseID) references dbo.purchase(id);
alter table dbo.purchaseAsset add constraint fk_purchaseAsset_asset foreign key(assetID) references dbo.asset(id);

-- scan
alter table dbo.scan add constraint fk_scan_account foreign key(accountId) references dbo.account(id);
alter table dbo.scan add constraint fk_scan_purchase foreign key(purchaseID) references dbo.purchase(id);
alter table dbo.scan add constraint fk_scan_purchaseAsset foreign key(purchaseAssetID) references dbo.purchaseAsset(id);

-- userAccount
alter table dbo.userAccount add constraint fk_userAccount_account foreign key(accountId) references dbo.account(id);
alter table dbo.userAccount add constraint fk_userAccount_userLogin foreign key(userLogonId) references dbo.userLogin(id);

-- userLoginEmailHistory
alter table dbo.userLoginEmailHistory add constraint fk_userLoginEmailHistory_userLogin foreign key(userLoginId) references dbo.userLogin(id);

-- userLoginPasswordHistory
alter table dbo.userLoginPasswordHistory add constraint fk_userLoginPasswordHistory_userLogin foreign key(userLoginId) references dbo.userLoginPasswordHistory(id);

-- userRequest
alter table dbo.userRequest add constraint fk_userRequest_account     foreign key(userAccountId) references dbo.userAccount(id);
alter table dbo.userRequest add constraint fk_userRequest_userSession foreign key(userSessionID) references dbo.userSession(id);

-- userSession
alter table dbo.userSession add constraint fk_userSession_userLogin foreign key(userLoginID) references dbo.userLogin(id);
