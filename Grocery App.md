# Grocery App Artefacts information

### DB table
#### ZASM_Grocery
<Code>
@EndUserText.label : 'Grocery table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zasm_grocery {

  key client       : abap.clnt not null;
  key id           : sysuuid_x16 not null;
  product          : abap.char(40);
  category         : abap.char(40);
  brand            : abap.char(40);
  @Semantics.amount.currencyCode : 'zasm_grocery.currency'
  price            : abap.curr(10,2);
  currency         : abap.cuky;
  quantity         : abap.int2;
  purchasedate     : abap.dats;
  expirationdate   : abap.dats;
  expired          : abap_boolean;
  rating           : abap.fltp;
  note             : abap.char(255);
  createdby        : abp_creation_user;
  createdat        : tzntstmpl;
  lastchangedby    : abp_locinst_lastchange_user;
  lastchangedat    : abp_lastchange_tstmpl;
  locallastchanged : abp_locinst_lastchange_tstmpl;
	
}


</Code>
