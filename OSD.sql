-------------------------- TABLE DELETED ----------------------

-- select * from tab;

-- drop table orders;
-- drop table customers;
-- drop table pro;
-- drop table ar;

-- purge table customers;
-- purge table orders;
-- purge table pro;
-- purge table ar;

-- select * from tab;

-------------------------- CREATE TABLES ----------------------

create table Customers(
    customer_id int primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    phone varchar(15) not null,
    city varchar(50) not null,
    create_at date
);

insert into Customers values (2352,'Balaji','T','balaji@gmail.com','9345868996','Bodi',TO_DATE('05-JUL-2026','DD-MON-YYYY'));
insert into customers values (2368, 'Abdul', 'Rahuman', 'abdulrahuman@gmail.com', '9514789456', 'Palayam', TO_DATE('09-jul-2026','DD-MON-YYYY'));
insert into customers values (2356, 'Aswin', 'Karthick', 'aswinkarthick@gmail.com', '7695874057', 'Bodi', TO_DATE('05-apr-2026','DD-MON-YYYY'));
insert into customers values (2363, 'deepan', 's', 'deepan@gmail.com', '96380076507', 'bodi', TO_DATE('06-jun-2026','DD-MON-YYYY'));
insert into customers values (2387, 'Hiriya', 'Sakthi', 'hiriyasakthi@gmail.com', '6374470461', 'veerapandi', TO_DATE('20-feb-2026','DD-MON-YYYY'));
insert into customers values (2391, 'Arun', 'Kumar', 'arunkumar@gmail.com', '9876543210', 'Madurai', TO_DATE('12-JAN-2026','DD-MON-YYYY'));
insert into customers values (2392, 'Vignesh', 'R', 'vigneshr@gmail.com', '9123456789', 'Theni', TO_DATE('18-FEB-2026','DD-MON-YYYY'));
insert into customers values (2393, 'Praveen', 'M', 'praveenm@gmail.com', '9988776655', 'Dindigul', TO_DATE('25-MAR-2026','DD-MON-YYYY'));
insert into customers values (2394, 'Karthik', 'S', 'karthiks@gmail.com', '9345678901', 'Chennai', TO_DATE('10-APR-2026','DD-MON-YYYY'));
insert into customers values (2395, 'Naveen', 'Raj', 'naveenraj@gmail.com', '9090909090', 'Coimbatore', TO_DATE('15-MAY-2026','DD-MON-YYYY'));
insert into customers values (2396, 'Suresh', 'Babu', 'sureshbabu@gmail.com', '9567891234', 'Salem', TO_DATE('22-JUN-2026','DD-MON-YYYY'));
insert into customers values (2397, 'Ramesh', 'K', 'rameshk@gmail.com', '9786543210', 'Trichy', TO_DATE('03-JUL-2026','DD-MON-YYYY'));
insert into customers values (2398, 'Mohan', 'Raj', 'mohanraj@gmail.com', '9445566778', 'Erode', TO_DATE('08-AUG-2026','DD-MON-YYYY'));
insert into customers values (2399, 'Ajith', 'Kumar', 'ajithkumar@gmail.com', '9012345678', 'Tirunelveli', TO_DATE('19-SEP-2026','DD-MON-YYYY'));
insert into customers values (2400, 'Saravanan', 'P', 'saravananp@gmail.com', '9367890123', 'Karur', TO_DATE('05-OCT-2026','DD-MON-YYYY'));
insert into customers values (2401, 'Dinesh', 'R', 'dineshr@gmail.com', '9955667788', 'Namakkal', TO_DATE('14-NOV-2026','DD-MON-YYYY'));
insert into customers values (2402, 'Lokesh', 'V', 'lokeshv@gmail.com', '9871203456', 'Bodi', TO_DATE('28-DEC-2026','DD-MON-YYYY'));
insert into customers values (2403, 'Kavin', 'M', 'kavinm@gmail.com', '9789012345', 'Palani', TO_DATE('11-JAN-2026','DD-MON-YYYY'));
insert into customers values (2404, 'Harish', 'S', 'harishs@gmail.com', '9654781230', 'Cumbum', TO_DATE('07-FEB-2026','DD-MON-YYYY'));
insert into customers values (2405, 'Yogesh', 'K', 'yogeshk@gmail.com', '9340011223', 'Periyakulam', TO_DATE('30-MAR-2026','DD-MON-YYYY'));

select * from customers;
