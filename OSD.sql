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
add constraint pk_product
primary key (product_id);

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

insert into orders values (5001,2352,TO_DATE('06-JUL-2026','DD-MON-YYYY'),74999.00);
insert into orders values (5002,2368,TO_DATE('10-JUL-2026','DD-MON-YYYY'),1299.00);
insert into orders values (5003,2356,TO_DATE('07-APR-2026','DD-MON-YYYY'),4999.00);
insert into orders values (5004,2363,TO_DATE('08-JUN-2026','DD-MON-YYYY'),699.00);
insert into orders values (5005,2387,TO_DATE('22-FEB-2026','DD-MON-YYYY'),3499.00);
insert into orders values (5006,2391,TO_DATE('13-JAN-2026','DD-MON-YYYY'),79999.00);
insert into orders values (5007,2392,TO_DATE('20-FEB-2026','DD-MON-YYYY'),1599.00);
insert into orders values (5008,2393,TO_DATE('27-MAR-2026','DD-MON-YYYY'),899.00);
insert into orders values (5009,2394,TO_DATE('12-APR-2026','DD-MON-YYYY'),1999.00);
insert into orders values (5010,2395,TO_DATE('17-MAY-2026','DD-MON-YYYY'),2499.00);

insert into orders values (5011,2396,TO_DATE('24-JUN-2026','DD-MON-YYYY'),999.00);
insert into orders values (5012,2397,TO_DATE('05-JUL-2026','DD-MON-YYYY'),4299.00);
insert into orders values (5013,2398,TO_DATE('10-AUG-2026','DD-MON-YYYY'),599.00);
insert into orders values (5014,2399,TO_DATE('21-SEP-2026','DD-MON-YYYY'),6999.00);
insert into orders values (5015,2400,TO_DATE('07-OCT-2026','DD-MON-YYYY'),1499.00);
insert into orders values (5016,2401,TO_DATE('16-NOV-2026','DD-MON-YYYY'),299.00);
insert into orders values (5017,2402,TO_DATE('29-DEC-2026','DD-MON-YYYY'),499.00);
insert into orders values (5018,2403,TO_DATE('13-JAN-2026','DD-MON-YYYY'),399.00);
insert into orders values (5019,2404,TO_DATE('09-FEB-2026','DD-MON-YYYY'),1999.00);
insert into orders values (5020,2405,TO_DATE('01-APR-2026','DD-MON-YYYY'),699.00);

insert into orders values (5021,2352,TO_DATE('15-JUL-2026','DD-MON-YYYY'),2999.00);
insert into orders values (5022,2368,TO_DATE('18-JUL-2026','DD-MON-YYYY'),5499.00);
insert into orders values (5023,2356,TO_DATE('12-APR-2026','DD-MON-YYYY'),1799.00);
insert into orders values (5024,2363,TO_DATE('20-JUN-2026','DD-MON-YYYY'),799.00);
insert into orders values (5025,2387,TO_DATE('01-MAR-2026','DD-MON-YYYY'),899.00);
insert into orders values (5026,2391,TO_DATE('25-JAN-2026','DD-MON-YYYY'),1499.00);
insert into orders values (5027,2392,TO_DATE('25-FEB-2026','DD-MON-YYYY'),4999.00);
insert into orders values (5028,2393,TO_DATE('30-MAR-2026','DD-MON-YYYY'),2499.00);
insert into orders values (5029,2394,TO_DATE('15-APR-2026','DD-MON-YYYY'),599.00);
insert into orders values (5030,2395,TO_DATE('25-MAY-2026','DD-MON-YYYY'),3499.00);

select * from orders;

-------------------------- CREATE ORDER_ITEMS TABLES ----------------------

create table order_items(
    order_item_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    price number(10,2),

    constraint fk_order_id
    foreign key(order_id)
    references orders(order_id),

    constraint fk_product_id
    foreign key(product_id)
    references products(product_id)
);

insert into order_items values (7001,5001,1001,1,74999.00);
insert into order_items values (7002,5001,1004,2,4999.00);
insert into order_items values (7003,5002,1007,1,1299.00);
insert into order_items values (7004,5002,1010,2,1499.00);
insert into order_items values (7005,5003,1011,1,4999.00);
insert into order_items values (7006,5003,1015,2,599.00);
insert into order_items values (7007,5004,1016,1,699.00);
insert into order_items values (7008,5004,1018,1,799.00);
insert into order_items values (7009,5005,1021,1,3499.00);
insert into order_items values (7010,5005,1025,1,1499.00);

insert into order_items values (7011,5006,1002,1,79999.00);
insert into order_items values (7012,5006,1005,1,2999.00);
insert into order_items values (7013,5007,1008,1,1599.00);
insert into order_items values (7014,5007,1006,2,799.00);
insert into order_items values (7015,5008,1017,1,899.00);
insert into order_items values (7016,5008,1019,2,599.00);
insert into order_items values (7017,5009,1009,1,1999.00);
insert into order_items values (7018,5009,1014,1,1799.00);
insert into order_items values (7019,5010,1022,1,2499.00);
insert into order_items values (7020,5010,1023,2,899.00);

insert into order_items values (7021,5011,1020,1,999.00);
insert into order_items values (7022,5011,1028,2,399.00);
insert into order_items values (7023,5012,1013,1,4299.00);
insert into order_items values (7024,5012,1012,1,5499.00);
insert into order_items values (7025,5013,1015,1,599.00);
insert into order_items values (7026,5013,1026,2,299.00);
insert into order_items values (7027,5014,1024,1,6999.00);
insert into order_items values (7028,5014,1029,1,1999.00);
insert into order_items values (7029,5015,1025,1,1499.00);
insert into order_items values (7030,5015,1027,2,499.00);

insert into order_items values (7031,5016,1026,1,299.00);
insert into order_items values (7032,5016,1030,1,699.00);
insert into order_items values (7033,5017,1027,1,499.00);
insert into order_items values (7034,5017,1028,2,399.00);
insert into order_items values (7035,5018,1019,1,599.00);
insert into order_items values (7036,5018,1016,1,699.00);
insert into order_items values (7037,5019,1029,1,1999.00);
insert into order_items values (7038,5019,1030,2,699.00);
insert into order_items values (7039,5020,1016,1,699.00);
insert into order_items values (7040,5020,1023,1,899.00);

insert into order_items values (7041,5021,1005,1,2999.00);
insert into order_items values (7042,5021,1027,1,499.00);
insert into order_items values (7043,5022,1012,1,5499.00);
insert into order_items values (7044,5022,1004,1,4999.00);
insert into order_items values (7045,5023,1014,1,1799.00);
insert into order_items values (7046,5023,1006,1,799.00);
insert into order_items values (7047,5024,1018,1,799.00);
insert into order_items values (7048,5025,1017,1,899.00);
insert into order_items values (7049,5026,1025,1,1499.00);
insert into order_items values (7050,5030,1021,1,3499.00);

select * from order_items;