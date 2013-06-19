ch.defineEntity
'Clinic',
'name:address:latitude:longitude:photo:id:ts:cts',
''
;

ch.defineEntity
'Patient',
'title:fname:lname:mname:gender:birthDate:phone:id:ts:cts',
''
;
	
ch.defineEntity
'Specialization',
'name:id:ts:cts',
''
;

ch.defineEntity
'Practitioner',
'title:fname:lname:mname:photo:id:ts:cts',
'clinic,Clinic'
;

ch.defineEntity
'PractitionerSpecialization',
'id:ts:cts',
'practitioner,Practitioner:specialization,Specialization'
;

ch.defineEntity
'Chair',
'name:id:ts:cts',
'clinic,Clinic'
;

ch.defineEntity
'ChairSpecialization',
'id:ts:cts',
'chair,Chair:specialization,Specialization'
;

ch.defineEntity
'TimeSlot',
'dateb:duration:id:ts:cts',
'chair,Chair',
'datee,datetime,"dateadd(mi,duration,dateb)"'
;

ch.defineEntity
'PatientRequest',
'status:id:ts:cts',
'timeSlot,TimeSlot:practitioner,Practitioner:patient,Patient:chair,Chair'
;

commit
;