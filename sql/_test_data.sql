-- D4WClinic
insert into cht.d4wclinic on existing update with auto name
select 1 as id,
    'clinic #1' as name,
    'Town street house #1' as address,
    100 as latitude,
    100 as longitude
union
select 2,
    'clinic #2',
    'Town street house #2',
    100 as latitude,
    100 as longitude
;
commit
;
-- D4WPractitioner
insert into cht.D4WPractitioner on existing update with auto name
select 1 as id,
    'mr' as title,
    'Tommy' as fname,
    'Katkins' as lname,
    1 as clinic
union
select 2,
    'mrs',
    'Kitty',
    'Katkins',
    2 
;
commit
;
-- D4WSpecialization
insert into cht.D4WSpecialization on existing update with auto name
select 'parodontist' as name,
    1 as id
union
select 'therapeutist',
    2
union
select 'prosthetist',
    3
;
commit
;

-- D4WPractitionerSpecialization
insert into cht.D4WPractitionerSpecialization on existing update with auto name
select 1 as practitioner,
    1 as specialization
union
select 1,2
union
select 1,3
union
select 2,2
;
commit
;

-- D4WPatient
insert into cht.D4WPatient on existing update with auto name
select 1 as id,
    'mr' as title,
    'Cat' as lname,
    'Cashmir' as fname,
    'M' as gender
union
select 2,
    'mrs',
    'Cat',
    'Murka',
    'F'
;
commit
;

-- D4WChair
insert into cht.D4WChair on existing update with auto name
select 1 as id,
    'Big chair' as name,
    1 as clinic
union
select 2,
    'Small chair',
    2 
;
commit
;

-- D4WChairSpecialization
insert into cht.D4WChairSpecialization on existing update with auto name
select 1 as chair,
    1 as specialization
union
select 1,2
union
select 1,3
union
select 2,2
union
select 2,3
;
commit
;
