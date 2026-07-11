insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values (01, 'Abdul', 'Theni');
insert into DEPARTMENT  (DEPT_ID, DEPT_NAME, LOCATION) values(06, 'DEEPAN', 'madurai');
insert into DEPARTMENT  (DEPT_ID, DEPT_NAME, LOCATION) values(07, 'Balaji', 'chennai');
insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values(08, 'Hiriyas', 'coimbatore');
insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values(09, 'Aswin Karthik', 'bodi');

 desc DEPARTMENT;

 select * from DEPARTMENT;

update DEPARTMENT
set DEPT_NAME='Testing'
where DEPT_ID=1;

update DEPARTMENT
set DEPT_NAME='Sales'
where DEPT_ID=6;

update DEPARTMENT
set DEPT_NAME='Marketing'
where DEPT_ID=7;

update DEPARTMENT
set DEPT_NAME='IT'
where DEPT_ID=8;

update DEPARTMENT
set DEPT_NAME='HR'
where DEPT_ID=9;



------------------------------------ CREATE TABLE EMPLOYEE ------------------------------------------


create table Employee (
    Emp_id int primary key,
    Emp_name varchar2(30) not null,
    Gender varchar2(10) not null,
    Age number(3) not null,
    Salary number(10) not null,
    Hire_date date not null,
    DEPT_ID int,
    constraint fk_DEPT_ID
    foreign key(DEPT_ID)
    references Department(DEPT_ID)

);


-- DEPT_ID = 1
INSERT INTO Employee VALUES (2368,'Abdul','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),1);
INSERT INTO Employee VALUES (2369,'Arun','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),1);
INSERT INTO Employee VALUES (2370,'Karthik','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),1);
INSERT INTO Employee VALUES (2371,'Prakash','Male',24,25000,TO_DATE('14-06-2026','DD-MM-YYYY'),1);
INSERT INTO Employee VALUES (2372,'Vimal','Male',25,27000,TO_DATE('16-06-2026','DD-MM-YYYY'),1);

-- DEPT_ID = 6
INSERT INTO Employee VALUES (2373,'Deepan','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),6);
INSERT INTO Employee VALUES (2374,'Rahul','Male',22,21000,TO_DATE('10-06-2026','DD-MM-YYYY'),6);
INSERT INTO Employee VALUES (2375,'Sanjay','Male',23,23000,TO_DATE('12-06-2026','DD-MM-YYYY'),6);
INSERT INTO Employee VALUES (2376,'Harish','Male',24,25000,TO_DATE('14-06-2026','DD-MM-YYYY'),6);
INSERT INTO Employee VALUES (2377,'Ajith','Male',25,27000,TO_DATE('16-06-2026','DD-MM-YYYY'),6);

-- DEPT_ID = 7
INSERT INTO Employee VALUES (2378,'Balaji','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),7);
INSERT INTO Employee VALUES (2379,'Vignesh','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),7);
INSERT INTO Employee VALUES (2380,'Ramesh','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),7);
INSERT INTO Employee VALUES (2381,'Naveen','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),7);
INSERT INTO Employee VALUES (2382,'Dinesh','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),7);

-- DEPT_ID = 8
INSERT INTO Employee VALUES (2383,'Hiriyas','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),8);
INSERT INTO Employee VALUES (2384,'Kishore','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),8);
INSERT INTO Employee VALUES (2385,'Mohan','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),8);
INSERT INTO Employee VALUES (2386,'Saravanan','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),8);
INSERT INTO Employee VALUES (2387,'Bharath','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),8);

-- DEPT_ID = 9
INSERT INTO Employee VALUES (2388,'Aswin','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),9);
INSERT INTO Employee VALUES (2389,'Suresh','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),9);
INSERT INTO Employee VALUES (2390,'Aravind','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),9);
INSERT INTO Employee VALUES (2391,'Lokesh','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),9);
INSERT INTO Employee VALUES (2392,'Manikandan','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),9);


 select * from DEPARTMENT;
  delete from DEPARTMENT
 where DEPT_ID in (104001,104006,104007,104008,104009);
select * from Employee;



------------------------- CREATE TABLE JOB ----------------------------------


create table Job (
    job_id int primary key,
    job_title varchar2(50),
    Emp_id int,
    constraint fk_Emp_id
    foreign key (Emp_id)
    references Employee(Emp_id)
);

insert into Job values(01,'Frontend',2368);
INSERT INTO Job VALUES (02,'Backend',2369);
INSERT INTO Job VALUES (03,'Full Stack',2370);
INSERT INTO Job VALUES (04,'UI/UX Designer',2371);
INSERT INTO Job VALUES (05,'QA Tester',2372);

INSERT INTO Job VALUES (06,'Frontend',2373);
INSERT INTO Job VALUES (07,'Backend',2374);
INSERT INTO Job VALUES (08,'Full Stack',2375);
INSERT INTO Job VALUES (09,'UI/UX Designer',2376);
INSERT INTO Job VALUES (10,'QA Tester',2377);

INSERT INTO Job VALUES (11,'Frontend',2378);
INSERT INTO Job VALUES (12,'Backend',2379);
INSERT INTO Job VALUES (13,'Full Stack',2380);
INSERT INTO Job VALUES (14,'UI/UX Designer',2381);
INSERT INTO Job VALUES (15,'QA Tester',2382);

INSERT INTO Job VALUES (16,'Frontend',2383);
INSERT INTO Job VALUES (17,'Backend',2384);
INSERT INTO Job VALUES (18,'Full Stack',2385);
INSERT INTO Job VALUES (19,'UI/UX Designer',2386);
INSERT INTO Job VALUES (20,'QA Tester',2387);

INSERT INTO Job VALUES (21,'Frontend',2388);
INSERT INTO Job VALUES (22,'Backend',2389);
INSERT INTO Job VALUES (23,'Full Stack',2390);
INSERT INTO Job VALUES (24,'UI/UX Designer',2391);
INSERT INTO Job VALUES (25,'QA Tester',2392);

select * from Job;

-----------------------------------------Query------------------------------------------------------------------------

select * from tab;
select * from DEPARTMENT;
select * from employee;
select * from job;

 --1.  display all employees --
select * from employee;


--2. display employees name only --
select Emp_name from Employee;

--3. Employee with salary > 19000 --
select Emp_name,salary 
from Employee
where salary>19000;

--4. Employees from a particular department --
select *
from Employee
where DEPT_ID=1;

--5. Employees aged above 25.
select Age 
from Employee
where Age>25;

--6.Sort salary ascending.
select Salary 
from Employee
order by  Salary ASC;

--7. Sort salary descending.
select Salary
from Employee
order by Salary DESC;

--8. Employees hired after a specific date.
select Hire_date
from Employee
where Hire_date >'07-jun-2026';

--9. Employees whose name starts with 'A'.
select Emp_name
from Employee
where Emp_name like 'A%';

--10. Employees whose salary is between 25000 and 50000.
select Salary
from Employee
where Salary between 20000 and 30000;

--11. Department-wise employee count.
select count(*)
from Employee
group by DEPT_ID;

--12. Department-wise average salary.
select avg (Salary) as average_sal
from Employee
group by DEPT_ID;

--13. Highest salary.
select max(Salary) as highest_sal
from Employee;

--14.Lowest salary.
select min(Salary) as lowest_sal
from Employee;

--15. Total salary.
select sum(Salary) as total_salary
from Employee;

--16. Maximum salary in each department.
select max(Salary) as max_sal
from Employee
group by DEPT_ID;

--17. Minimum salary in each department.
select min(Salary) as min_sal
from Employee
group by DEPT_ID;

--18. Departments having more than 3 employees.
select DEPT_ID, count(*)
from Employee
group by DEPT_ID
having count(*) > 3;

--19. Employees with NULL values (if any).
select *
from Employee
where DEPT_ID is null;


--20.Count of male and female employees.
select count(Gender)
from Employee
group by Gender;

--21. Employee name with department name.
select Emp_name,DEPT_NAME
from Employee E,DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID;

--22. Employee name with location.
select Emp_name,LOCATION
from Employee E, DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID;

--23. Employee name with job title.
select Emp_name,job_title
from Employee E, Job J
where E.Emp_id = J.Emp_id;

--24. Employees working in Chennai.
select Emp_name,LOCATION
from Employee E,DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID and LOCATION in ('chennai');

--25. Employees in the HR department.
select Emp_name,DEPT_NAME
from Employee E, DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID and DEPT_NAME in ('HR');


--26. Employees with salary > 40000 and department name.
select Salary,DEPT_NAME
from Employee E,DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID and Salary > 40000;


--27. Department-wise employee list.
SELECT D.DEPT_NAME,
       E.Emp_name
FROM Employee E,
     Department D
WHERE E.DEPT_ID = D.DEPT_ID
ORDER BY D.DEPT_NAME;

--28. Job title with department.
select job_title,DEPT_NAME
from Job J, DEPARTMENT D, Employee E
where J.Emp_id = E.Emp_id and  E.DEPT_ID = D.DEPT_ID; 


--29. Employees hired after 2022 with department.
select Hire_date,DEPT_NAME
from Employee E,DEPARTMENT D
where E.DEPT_ID = D.DEPT_ID and Hire_date > TO_DATE('2022','yyyy') ; 


--30. Employees and their job titles.
select Emp_name,job_title
from Employee E, Job J
where E.Emp_id = J.Emp_id;