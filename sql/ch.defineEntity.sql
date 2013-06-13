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
'dateb:datee:id:ts:cts:xid',
'insuranseCompany,D4InsuranceCompany:clinic,D4Clinic'
;

ch.defineEntity
'D4Practitioner',
'title:fname:lname:photo:xmlData:id:ts:cts:xid',
'clinic,D4Clinic'
;


ch.defineEntity
'D4Patient',
'title:fname:lname:photo:UOAuthAccount:xmlData:id:ts:cts:xid',
''
;

ch.defineEntity
'D4PatientInsuranceCompany',
'dateb:datee:id:ts:cts:xid',
'insuranseCompany,D4InsuranceCompany:patient,D4Patient'
;

ch.defineEntity
'D4TimeSlot',
'dateb:datee:status:id:ts:cts:xid',
'practitioner,D4Practitioner'
;

ch.defineEntity
'D4PatientRequest',
'status:id:ts:cts:xid',
'timeSlot,D4TimeSlot:patient,D4Patient'
;

commit
;