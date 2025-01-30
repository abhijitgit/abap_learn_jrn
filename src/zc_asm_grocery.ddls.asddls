@Metadata.allowExtensions: true
@EndUserText.label: 'Projection view for ZR_ASM_GROCERY'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true

define root view entity ZC_ASM_GROCERY
  provider contract transactional_query
  as projection on ZR_ASM_GROCERY
{
  key Id,
  @Search.defaultSearchElement: true
  Product,
  @Search.defaultSearchElement: true
  Category,
  @Search.defaultSearchElement: true
  Brand,
  Price,
  @Semantics.currencyCode: true
  Currency,
  Quantity,
  Purchasedate,
  Expirationdate,
  Expired,
  Rating,
  Note,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
