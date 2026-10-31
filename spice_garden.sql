create database spice_garden;
use spice_garden;
create table categories(
category_no int primary key,
category_name varchar(50)not null unique
);
describe categories;
select*from categories;
-- create menu items
create table menu_items(
item_no int unique,
item_name varchar(50) not null,
category_no int primary key,
price decimal(10,2) not null,
availability varchar(20)default 'yes',
foreign key(category_no) references categories(category_no));
select*from menu_items;
describe categories;
describe menu_items;
drop table menu_items;
create table menu_items(
item_no int primary key,
item_name varchar(50) not null,
category_no int ,
price decimal(10,2) not null,
availability varchar(20)default 'yes',
foreign key(category_no) references categories(category_no));
select*from menu_items;
select*from categories;
-- insert
insert into categories(category_no,category_name)
values(1,'Starters'),
(2,'Main Course'),
(3,'Desserts');
select*from categories;
insert into menu_items(item_no,item_name,category_no,price,availability)
values(1,'chicken 65',1,180.00,'yes');
insert into menu_items(item_no,item_name,category_no,price)
values (2,'veg spring roll',1,120.00);
select*from menu_items;
insert into menu_items(item_no,item_name,category_no,price)
values (3,'chicken biriyani',2,250.00);
select*from menu_items;
insert into menu_items(item_no,item_name,category_no,price,availability)
values (4,'paneer butter masala',2,220.00,'no');
insert into menu_items(item_no,item_name,category_no,price)
values(5,'gulab jamun',3,80.00);
select*from menu_items;
-- ERROR CHECK 
-- 5 QUESTION
INSERT INTO CATEGORIES(CATEGORY_NO,CATEGORY_NAME)
VALUES (1,'DESSERTS');
INSERT INTO MENU_ITEMS(ITEM_NO,ITEM_NAME,CATEGORY_NO,PRICE,AVAILABILITY)
(6,2,180.00,'YES');
insert into menu_items(item_no,item_name,category_no,price)
values(6,'gulab ',7,80.00);
insert into menu_items(item_no,item_name,category_no,price,availability)
values (4,'paneer masala',2,220.00,'no');
-- SHOW 
SELECT*FROM CATEGORIES;
SELECT*FROM MENU_ITEMS;
-- add a column
alter table menu_items add column spice_level varchar(30);
-- changing varchar storage()

alter table menu_items modify column item_name varchar(80);
-- changing column name
alter table menu_items rename column availability to in_stock;
-- removing a column
alter table menu_items drop column spice_level; 
create table offers_test(
item_no int,
offer_mode varchar(20)
);
drop table offers_test;
drop table categories;





