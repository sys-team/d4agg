ch.defineEntity
'D4Geoposition',
'address:altitude:longitude:id:ts:cts:xid',
''
;

ch.defineEntity
'D4InsuranceCompany',
'name:id:ts:cts:xid',
''
;

ch.defineEntity
'D4Clinic',
'name:code:xmlData:id:ts:cts:xid',
'geoposition,D4Geoposition'
;

ch.defineEntity
'D4ClinicInsuranceCompany',
'id:ts:cts:xid',
'insuranseCompany,D4InsuranceCompany:clinic,D4Clinic'
;