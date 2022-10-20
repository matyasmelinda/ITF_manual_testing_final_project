create database orangeHrm;

create table personalDetails (
       employeeID varchar (4),
       firstName varchar (30),
       lastName varchar (30),
       nationality varchar (25),
       maritalStatus varchar (25),
       dateOfBirth date,
       gender varchar (6)
       );
       
insert into personalDetails (employeeID, firstName, lastName, nationality, maritalStatus, dateOfBirth, gender) values
('0221', 'Alice', 'Duval', 'American', 'single', '1978-11-08', 'female'),
('0046', 'Cassidy', 'Hope', 'American', 'single', '1992-06-03', 'female'),
('0212', 'Charlie', 'Carter','American', 'single','1977-10-11','male'),
('0217', 'Chenzira', 'Chuki', 'Chinese','married', '1971-04-21', 'male'),
('0066', 'David', 'Morris', 'American', 'single', '1979-06-07', 'male'),
('0020', 'Dominic', 'Chase', 'American', 'single', '1985-07-15', 'male'),
('0029', 'Fiona', 'Dark', 'American', 'married', '1977-10-25', 'female'),
('0099', 'Garry', 'White', 'Canadian', 'single', '1983-03-15', 'male'),
('0231', 'Nathan', 'Elliot', 'American', 'married', '1980-04-23', 'male'),
('0011', 'John', 'Smith', 'American', 'married', '1975-03-18', 'male');

select * from personalDetails;

select * from personalDetails where lastName = 'Hope';

select * from personalDetails where employeeID = '0099';

select * from personalDetails where firstName like 'D%';

select * from personalDetails where lastName != 'Chase';

select * from personalDetailS where dateOfBirth like '198%';

select * from personalDetails where 
dateOfBirth like '199%'
and firstName like 'C%';

select * from personalDetails
 where nationality = 'American'
 and gender = 'male';

select count(*) from personalDetails;

select * from personalDetails where employeeID between 0001 and 0100;

select lastName, firstName from personalDetails where dateOfBirth >='1992-06-03';

select lastname, firstName from personalDetails where dateOfbirth <'1980-04-23';

select * from personalDetails 
where maritalStatus = 'single'
and gender = 'male';

select * from personalDetails 
where maritalStatus = 'married'
and gender = 'female';

select gender, count(*) from personalDetails group by gender;

select nationality, count(*) from personalDetails group by nationality;

update personalDetails
set maritalStatus = 'married'
where firstname = 'Alice' and lastName = 'Duval';

delete from personalDetails where employeeID = '0066';
