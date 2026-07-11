-- -- insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values (01, 'Abdul', 'Theni');
-- -- insert into DEPARTMENT  (DEPT_ID, DEPT_NAME, LOCATION) values(06, 'DEEPAN', 'madurai');
-- -- insert into DEPARTMENT  (DEPT_ID, DEPT_NAME, LOCATION) values(07, 'Balaji', 'chennai');
-- -- insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values(08, 'Hiriyas', 'coimbatore');
-- -- insert into DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) values(09, 'Aswin Karthik', 'bodi');

-- -- -- desc DEPARTMENT;

-- -- -- select * from DEPARTMENT;

-- -- create table Employee (
-- --     Emp_id int primary key,
-- --     Emp_name varchar2(30) not null,
-- --     Gender varchar2(10) not null,
-- --     Age number(3) not null,
-- --     Salary number(10) not null,
-- --     Hire_date date not null,
-- --     DEPT_ID int,
-- --     constraint fk_DEPT_ID
-- --     foreign key(DEPT_ID)
-- --     references Department(DEPT_ID)

-- -- );

-- -- -- DEPT_ID = 1
-- -- INSERT INTO Employee VALUES (2368,'Abdul','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),1);
-- -- INSERT INTO Employee VALUES (2369,'Arun','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),1);
-- -- INSERT INTO Employee VALUES (2370,'Karthik','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),1);
-- -- INSERT INTO Employee VALUES (2371,'Prakash','Male',24,25000,TO_DATE('14-06-2026','DD-MM-YYYY'),1);
-- -- INSERT INTO Employee VALUES (2372,'Vimal','Male',25,27000,TO_DATE('16-06-2026','DD-MM-YYYY'),1);

-- -- -- DEPT_ID = 6
-- -- INSERT INTO Employee VALUES (2373,'Deepan','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),6);
-- -- INSERT INTO Employee VALUES (2374,'Rahul','Male',22,21000,TO_DATE('10-06-2026','DD-MM-YYYY'),6);
-- -- INSERT INTO Employee VALUES (2375,'Sanjay','Male',23,23000,TO_DATE('12-06-2026','DD-MM-YYYY'),6);
-- -- INSERT INTO Employee VALUES (2376,'Harish','Male',24,25000,TO_DATE('14-06-2026','DD-MM-YYYY'),6);
-- -- INSERT INTO Employee VALUES (2377,'Ajith','Male',25,27000,TO_DATE('16-06-2026','DD-MM-YYYY'),6);

-- -- -- DEPT_ID = 7
-- -- INSERT INTO Employee VALUES (2378,'Balaji','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),7);
-- -- INSERT INTO Employee VALUES (2379,'Vignesh','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),7);
-- -- INSERT INTO Employee VALUES (2380,'Ramesh','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),7);
-- -- INSERT INTO Employee VALUES (2381,'Naveen','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),7);
-- -- INSERT INTO Employee VALUES (2382,'Dinesh','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),7);

-- -- -- DEPT_ID = 8
-- -- INSERT INTO Employee VALUES (2383,'Hiriyas','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),8);
-- -- INSERT INTO Employee VALUES (2384,'Kishore','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),8);
-- -- INSERT INTO Employee VALUES (2385,'Mohan','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),8);
-- -- INSERT INTO Employee VALUES (2386,'Saravanan','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),8);
-- -- INSERT INTO Employee VALUES (2387,'Bharath','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),8);

-- -- -- DEPT_ID = 9
-- -- INSERT INTO Employee VALUES (2388,'Aswin','Male',21,20000,TO_DATE('08-06-2026','DD-MM-YYYY'),9);
-- -- INSERT INTO Employee VALUES (2389,'Suresh','Male',22,22000,TO_DATE('10-06-2026','DD-MM-YYYY'),9);
-- -- INSERT INTO Employee VALUES (2390,'Aravind','Male',23,24000,TO_DATE('12-06-2026','DD-MM-YYYY'),9);
-- -- INSERT INTO Employee VALUES (2391,'Lokesh','Male',24,26000,TO_DATE('14-06-2026','DD-MM-YYYY'),9);
-- -- INSERT INTO Employee VALUES (2392,'Manikandan','Male',25,28000,TO_DATE('16-06-2026','DD-MM-YYYY'),9);


-- --  select * from DEPARTMENT;
-- -- --  delete from DEPARTMENT
-- -- --  where DEPT_ID in (104001,104006,104007,104008,104009);
-- -- select * from Employee;

-- create table Job (
--     job_id int primary key,
--     job_title varchar2(50),
--     Emp_id int,
--     constraint fk_Emp_id
--     foreign key (Emp_id)
--     references Employee(Emp_id)
-- );

-- insert into Job values(01,'Frontend',2368);
-- INSERT INTO Job VALUES (02,'Backend',2369);
-- INSERT INTO Job VALUES (03,'Full Stack',2370);
-- INSERT INTO Job VALUES (04,'UI/UX Designer',2371);
-- INSERT INTO Job VALUES (05,'QA Tester',2372);

-- INSERT INTO Job VALUES (06,'Frontend',2373);
-- INSERT INTO Job VALUES (07,'Backend',2374);
-- INSERT INTO Job VALUES (08,'Full Stack',2375);
-- INSERT INTO Job VALUES (09,'UI/UX Designer',2376);
-- INSERT INTO Job VALUES (10,'QA Tester',2377);

-- INSERT INTO Job VALUES (11,'Frontend',2378);
-- INSERT INTO Job VALUES (12,'Backend',2379);
-- INSERT INTO Job VALUES (13,'Full Stack',2380);
-- INSERT INTO Job VALUES (14,'UI/UX Designer',2381);
-- INSERT INTO Job VALUES (15,'QA Tester',2382);

-- INSERT INTO Job VALUES (16,'Frontend',2383);
-- INSERT INTO Job VALUES (17,'Backend',2384);
-- INSERT INTO Job VALUES (18,'Full Stack',2385);
-- INSERT INTO Job VALUES (19,'UI/UX Designer',2386);
-- INSERT INTO Job VALUES (20,'QA Tester',2387);

-- INSERT INTO Job VALUES (21,'Frontend',2388);
-- INSERT INTO Job VALUES (22,'Backend',2389);
-- INSERT INTO Job VALUES (23,'Full Stack',2390);
-- INSERT INTO Job VALUES (24,'UI/UX Designer',2391);
-- INSERT INTO Job VALUES (25,'QA Tester',2392);

-- select * from Job;

-- -----------------------------------------Query------------------------------------------------------------------------

select * from tab;
select * from DEPARTMENT;
select * from employee;
select * from job;
