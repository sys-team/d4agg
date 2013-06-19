-- Clinic
insert into d4w.Clinic on existing update with auto name
select 1 as id,
    'Big Cats clinic' as name,
    '000 Brisbane cats street #1' as address,
    -27.449790 as latitude,
    153.281250 as longitude
union
select 2,
    'Small dogs practice',
    '002 Sidney dogs street house #2',
    -33.504759,
    151.875000 
;
commit
;
-- Practitioner
insert into d4w.Practitioner on existing update with auto name
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
-- Specialization
insert into d4w.Specialization on existing update with auto name
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

-- PractitionerSpecialization
insert into d4w.PractitionerSpecialization on existing update with auto name
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

-- Patient
insert into d4w.Patient on existing update with auto name
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

-- Chair
insert into d4w.Chair on existing update with auto name
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

-- ChairSpecialization
insert into d4w.ChairSpecialization on existing update with auto name
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

-- TimeSlot
insert into d4w.TimeSlot on existing update with auto name
select 1 as chair,
    dateadd(hh, 12, today()) as dateb,
    30 as duration
union
select 1,  dateadd(hh, 14, today()), 60
union
select 2,  dateadd(hh, 14, today()), 30
union
select 2,  dateadd(hh, 11, today()), 120
;
commit
;
