-- view: assetView
\connect pam;
set schema 'public';

drop view if exists assetView;
CREATE VIEW assetView AS
select
      a.id
     ,a.[version]
     ,a.sortOrder
     ,a.createTranAuditID
      ,a.updateTranAuditID
     ,a.notes
     ,a.accountId
     ,a.name
     ,a.ownerName
     ,a.categoryId
     ,c.name categoryName
     ,a.placeId
     ,p.name placeName
     ,a.purchaseDate
     ,a.purchasedAt
     ,a.purchasePrice
     ,a.currencyCode
     ,a.quantity
     ,a.replacementValue
     ,a.make
     ,a.modelId
     ,a.model
     ,a.serialNum
from
  pam..asset a
    left join pam..place p on p.id = a.placeId
    left join pam..category c on c.id = a.categoryId;


GO

grant select  on assetView to pam;