@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'domain fixed value help'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_domain_fv as select from dd07t
{
   key domname,
    ddtext
} where domname = 'Z71_JOB'
