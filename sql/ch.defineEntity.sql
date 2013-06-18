ch.defineEntity
'D4WClinic',
'name:address:latitude:longitude:photo:id:ts:cts:xid',
''
;

ch.defineEntity
'D4WPatient',
'title:fname:lname:mname:gender:birthDate:phone:id:ts:cts:xid',
''
;
	
ch.defineEntity
'D4WSpecialization',
'name:id:ts:cts:xid',
''
;

ch.defineEntity
'D4WPractitioner',
'title:fname:lname:mname:photo:id:ts:cts:xid',
'clinic,D4WClinic'
;

ch.defineEntity
'D4WPractitionerSpecialization',
'id:ts:cts:xid',
'practitioner,D4WPractitioner:specialization,D4WSpecialization'
;

ch.defineEntity
'D4WChair',
'name:id:ts:cts:xid',
'clinic,D4WClinic'
;

ch.defineEntity
'D4WChairSpecialization',
'id:ts:cts:xid',
'chair,D4WChair:specialization,D4WSpecialization'
;

ch.defineEntity
'D4WTimeSlot',
'dateb:duration:id:ts:cts:xid',
'chair,D4WChair'
;

ch.defineEntity
'D4WPatientRequest',
'status:id:ts:cts:xid',
'timeSlot,D4WTimeSlot:practitioner,D4WPractitioner:patient,D4WPatient:chair,D4WChair'
;

commit
;