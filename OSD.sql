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

-------------------------- CREATE CUSTOMERS TABLES ----------------------

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


-------------------------- CREATE CATEGORIES TABLES ----------------------



create table categories (
    category_id number primary key,
    category_name varchar(50) not null
);

insert into categories values (4001, 'ELectronics');
insert into categories values (4002, 'Clothing');
insert into categories values (4003, 'Footwear');
insert into categories values (4004, 'Books');
insert into categories values (4005, 'Home ' || '&' ||' Kitchen');
insert into categories values (4006, 'Beauty');

select * from categories;


-------------------------- CREATE PRODUCTS TABLES ----------------------

create table products(
    product_id number,
    product_name varchar(100),
    price number(10,2),
    stock number,
    category_id number,
    constraint fk_customer
    foreign key (category_id)
    references categories(category_id)
);

alter table products
drop constraint fk_customer;

alter table products
add constraint fk_product_category
foreign key(category_id)
references categories(category_id);

insert into products values (1001, 'Samsung Galaxy S24', 74999.00, 25, 4001);
insert into products values (1002, 'Apple iPhone 15', 79999.00, 15, 4001);
insert into products values (1003, 'Dell Inspiron Laptop', 58999.00, 10, 4001);
insert into products values (1004, 'Sony Headphones', 4999.00, 40, 4001);
insert into products values (1005, 'Boat Smart Watch', 2999.00, 50, 4001);

insert into products values (1006, 'Men T-Shirt', 799.00, 60, 4002);
insert into products values (1007, 'Women Kurti', 1299.00, 35, 4002);
insert into products values (1008, 'Blue Jeans', 1599.00, 30, 4002);
insert into products values (1009, 'Hoodie', 1999.00, 20, 4002);
insert into products values (1010, 'Formal Shirt', 1499.00, 25, 4002);

insert into products values (1011, 'Nike Running Shoes', 4999.00, 18, 4003);
insert into products values (1012, 'Adidas Sneakers', 5499.00, 15, 4003);
insert into products values (1013, 'Puma Sports Shoes', 4299.00, 20, 4003);
insert into products values (1014, 'Leather Sandals', 1799.00, 30, 4003);
insert into products values (1015, 'Flip Flops', 599.00, 50, 4003);

insert into products values (1016, 'Python Programming', 699.00, 45, 4004);
insert into products values (1017, 'Java Complete Guide', 899.00, 30, 4004);
insert into products values (1018, 'Data Structures Book', 799.00, 25, 4004);
insert into products values (1019, 'SQL for Beginners', 599.00, 40, 4004);
insert into products values (1020, 'Operating Systems', 999.00, 20, 4004);

insert into products values (1021, 'Mixer Grinder', 3499.00, 12, 4005);
insert into products values (1022, 'Pressure Cooker', 2499.00, 18, 4005);
insert into products values (1023, 'Non-Stick Pan', 899.00, 40, 4005);
insert into products values (1024, 'Vacuum Cleaner', 6999.00, 10, 4005);
insert into products values (1025, 'Electric Kettle', 1499.00, 25, 4005);

insert into products values (1026, 'Face Wash', 299.00, 80, 4006);
insert into products values (1027, 'Shampoo', 499.00, 70, 4006);
insert into products values (1028, 'Body Lotion', 399.00, 60, 4006);
insert into products values (1029, 'Perfume', 1999.00, 20, 4006);
insert into products values (1030, 'Lipstick', 699.00, 35, 4006);

select * from products;


-------------------------- CREATE PRODUCTS TABLES ----------------------


create table orders(
    order_id int primary key,
    customer_id int,
    order_date date,
    total_amout number(10,2),

    constraint fk_customer
    foreign key(customer_id)
    references customers(customer_id)
);

