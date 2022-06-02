-- view: propertyNode
\connect pam;
set schema 'public';


drop view if exists propertyNode
CREATE VIEW propertyNode AS
  select
        'Place' as propertyNodeType
        ,id
       ,notes
       ,sortOrder
       ,version
       ,createTranAuditID
       ,updateTranAuditID
       ,accountId
       ,parentId
       ,name

       ,placeType
       ,address1
       ,address2
       ,city
       ,provence
       ,country
       ,postalCode

       ,null as categoryId
       ,null as ownerName
       ,0 as quantity
       ,0.00 as purchasePrice
       ,0.00 as replacementValue
       ,null as currencyCode
       ,null as purchaseDate
       ,null as purchasedAt
       ,null as make
       ,null as model
       ,null as modelId
       ,null as serialNum
  from
    pam..place
  union

  SELECT
      'Asset' as propertyNodeType
        ,id
       ,notes
       ,sortOrder
       ,version
       ,createTranAuditID
       ,updateTranAuditID
       ,accountId
       ,placeId   as parentId
       ,name

       ,null as placeType
       ,null as address1
       ,null as address2
       ,null as city
       ,null as provence
       ,null as country
       ,null as postalCode


       ,categoryId
       ,ownerName
       ,quantity
       ,purchasePrice
       ,replacementValue
       ,currencyCode
       ,purchaseDate
       ,purchasedAt
       ,make
       ,model
       ,modelId
       ,serialNum
  from
    pam..asset;

GO

grant select  on propertyNode to pam;