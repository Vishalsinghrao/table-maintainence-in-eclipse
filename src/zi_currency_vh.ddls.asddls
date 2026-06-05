@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'currency value help'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view entity zi_currency_vh
  as select from tcurc
    inner join   tcurt on tcurc.waers = tcurt.waers
    and tcurt.spras = $session.system_language
{
      @Search.defaultSearchElement: true
      key tcurc.waers,
      @Search.defaultSearchElement: true
      tcurt.ltext
}
