select * from uni.student
where courseid <> 1
;
select forenames, surname, dateofbirth 
from uni.student
where emailaddress = 'val.bolger@example.com'
;
select * from uni.module
where subject = 'Economics'
;
select * from uni.schedule
where cdate < '2020-09-21


Insert into uni.course(coursename) values ('Radar Telemetry')
;
insert into 
uni.module(modulename,subject,level,courseid,credits)
values
('String Theory','Physics',6,6,20),
('Exotic Matter','Physics',6,6,20),
('Harnessing the Einstein-Rosen Bridge','Physics',6,6,20),
('Supercollision and minature Black Holes','Physics',6,6,20)
;

insert into uni.student(forenames, surname, dateofbirth, courseid)
values
('John','Jones','2000-06-10',2),
('John','Jones','2000-06-10',2),
('Catherine','Donovan','2002-01-01',5),
('Claire','Farron','2001-12-04',5),
('Claire','Farron','2004-05-02',5),
('Claire','Farron','2008-04-06',5)
;

select count(*) from uni.student
;
select sum(fulltimefee) from uni.fees
;
select min(fulltimefee) from uni.fees
;
select max(fulltimefee) from uni.fees
;
select avg(parttimefee) from uni.fees
; select courseid, fulltimefee-scholarshipdiscount
from uni.fees

;
select courseid from uni.fees where fulltimefee = (select min(fulltimefee) from uni.fees)
;
select courseid, fulltimefee-scholarshipdiscount
from uni.fees
order by 2 desc
;
select * from uni.application
where courseappliedfor = 11
and dateofapplication between '2020-03-01' and '2020-08-30'
;
Min
select count(*) from uni.student
;
select sum(fulltimefee) from uni.fees
;
select min(fulltimefee) from uni.fees
;
select max(fulltimefee) from uni.fees
;
select avg(parttimefee) from uni.fees
; select courseid, fulltimefee-scholarshipdiscount
from uni.fees

;
select courseid from uni.fees where fulltimefee = (select min(fulltimefee) from uni.fees)
;
select courseid, fulltimefee-scholarshipdiscount
from uni.fees
order by 2 desc
;
select * from uni.application
where courseappliedfor = 11
and dateofapplication between '2020-03-01' and '2020-08-30'
;

select * from uni.application 
where courseappliedfor = 11
and studentid = 0
and accepted = 1
;
insert into 
uni.student(forenames, surname, emailaddress, courseid)
select forenames, surname, emailaddress, courseappliedfor
from uni.application
where courseappliedfor in 11
and studentid = 0
and accepted = 1
;
select * from uni.application
where courseappliedfor = 1 and accepted = 0
;
delete from uni.application
where courseappliedfor in 11 and accepted = 0
;
select * from uni.application
where courseappliedfor = 11
and accepted = 0
and dateofapplication > '2020-08-01'
;
update uni.application
set accepted = 1
where courseappliedfor = 11
and accepted = 0
and dateofapplication > '2020-08-01'
;
rollback
;
update uni.application
set accepted = 1
where courseappliedfor = 11
and accepted = 0
and dateofapplication > '2020-09-01'
;
commit
;

