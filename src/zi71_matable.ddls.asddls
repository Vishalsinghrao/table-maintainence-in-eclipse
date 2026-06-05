@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'table maintainence'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zi71_matable
  as select from z71_table
{
  key bukrs      as Bukrs,
  key name       as Name,
  key age        as Age,
  key job        as Job,
      @Semantics.amount.currencyCode: 'Currency'
      salary     as Salary,
      @Consumption.valueHelpDefinition: [{
      entity: {
      name    : 'ZI_CURRENCY_VH',
      element : 'Currency'
      }
      }]
      currency   as Currency,
      is_active as Deactivate,
      @Semantics.systemDateTime.createdAt: true
      created_on as CreatedOn,
      @Semantics.user.createdBy: true
      created_by as CreatedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_on as LastChangedAt,
      @Semantics.user.lastChangedBy: true
      changed_by as LastChangedBy

}
