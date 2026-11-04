@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Suchhilfe Postleitzahl'
@Search.searchable: true
define view entity ZI_FT04_POSTCODE_VH
  as select from zft04_postcodes
{
      @Search.defaultSearchElement: true
  key country  as Country,
      @Search.defaultSearchElement: true
  key postcode as Postcode,
      @Search.defaultSearchElement: true
      city     as City
}
