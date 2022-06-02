\connect pam
set schema 'public';


-- category
alter table dbo.category drop constraint fk_category_category;

--- account
alter table dbo.account drop constraint fk_account_federation;
alter table dbo.account drop constraint fk_account_userOwner

-- accountInsurer
alter table accountInsurer drop constraint fk_accountInsurer_account;

-- asset
alter table dbo.asset drop constraint fk_asset_account;
alter table dbo.asset drop constraint fk_asset_place;
alter table dbo.asset drop constraint fk_asset_category;

-- assetTransfer
alter table dbo.assetTransfer drop constraint fk_assetTransfer_account;
alter table dbo.assetTransfer drop constraint fk_assetTransfer_financialTransaction;
alter table dbo.assetTransfer drop constraint fk_assetTransfer_asset;

-- attachment
alter table dbo.attachment drop constraint fk_attachment_account;

-- attachmnentLink
alter table dbo.attachmentLink drop constraint fk_attachmentLink_account;
alter table dbo.attachmentLink drop constraint fk_attachmentLink_attachment;

-- financialTransaction
alter table dbo.financialTransaction drop constraint fk_financialTransaction_account;

-- legalEntity
alter table dbo.legalEntity drop constraint fk_legalEntity_account;

-- legalEntityLink
alter table dbo.legalEntityLink drop constraint fk_legalEntityLink_account;
alter table dbo.legalEntityLink drop constraint fk_legalEntityLink_legalEntity;

-- legalEntityRole
alter table dbo.legalEntityRole drop constraint fk_legalEntityRole_account;
alter table dbo.legalEntityRole drop constraint fk_legalEntityRole_legalEntity;

-- place
alter table dbo.place drop constraint fk_place_account;
alter table dbo.place drop constraint fk_place_place;

-- policy
alter table dbo.policy drop constraint fk_policy_account;
alter table dbo.policy drop constraint fk_policy_place;
alter table dbo.policy drop constraint fk_policy_accountInsurer;

-- policyAsset
alter table dbo.policyAsset drop constraint fk_policyAsset_account;
alter table dbo.policyAsset drop constraint fk_policyAsset_policy;
alter table dbo.policyAsset drop constraint fk_policyAsset_asset;

-- policyPlace
alter table dbo.policyPlace drop constraint fk_policyPlace_account;
alter table dbo.policyPlace drop constraint fk_policyPlace_policy;
alter table dbo.policyPlace drop constraint fk_ppolicyPlace_place;

-- purchase
alter table dbo.purchase drop constraint fk_purchase_account;

-- purchaseAsset
alter table dbo.purchaseAsset drop constraint fk_purchaseAsset_account;
alter table dbo.purchaseAsset drop constraint fk_purchaseAsset_purchase;
alter table dbo.purchaseAsset drop constraint fk_purchaseAsset_asset;

-- scan
alter table dbo.scan drop constraint fk_scan_account;
alter table dbo.scan drop constraint fk_scan_purchase;
alter table dbo.scan drop constraint fk_scan_purchaseAsset;

-- userAccount
alter table dbo.userAccount drop constraint fk_userAccount_account;
alter table dbo.userAccount drop constraint fk_userAccount_userLogin;

-- userLoginEmailHistory
alter table dbo.userLoginEmailHistory drop constraint fk_userLoginEmailHistory_userLogin;

-- userLoginPasswordHistory
alter table dbo.userLoginPasswordHistory drop constraint fk_userLoginPasswordHistory_userLogin

-- userRequest
alter table dbo.userRequest drop constraint fk_userRequest_account;
alter table dbo.userRequest drop constraint fk_userRequest_userSession;

-- userSession
alter table dbo.userSession drop constraint fk_userSession_userLogin;






