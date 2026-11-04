@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZFT04_CUSTOMERS'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_FT04_CUSTOMERS
  provider contract transactional_query
  as projection on ZR_FT04_CUSTOMERS
  association [1..1] to ZR_FT04_CUSTOMERS as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  Customerid,
  Salutation,
  LastName,
  FirstName,
  Street,
  City,
  @Consumption.valueHelpDefinition: [{
  entity: { name: 'I_CountryVH', element: 'Country' }
}]
Country,@Consumption.valueHelpDefinition: [{
  entity: { name: 'ZI_FT04_POSTCODE_VH', element: 'Postcode' },
  additionalBinding: [{ localElement: 'Country', element: 'Country', usage: #FILTER }]
}]
Postcode,
  @Semantics: {
    user.createdBy: true
  }
  LocalCreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  LocalCreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LocalLastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _BaseEntity
}
