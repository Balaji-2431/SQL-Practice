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

