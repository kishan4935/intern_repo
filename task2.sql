create database imageshop;
use imageshop;
create table images(
img_id int, 
img_name varchar(20), 
img_thumb varchar(20), 
img_title varchar(20), 
img_desc varchar(50),
primary key(img_id) 
);

create table category(
cat_id int,
cat_name varchar(20),
cat_desc varchar(50),
img_id int,
primary key(cat_id),
foreign key(img_id) references images(img_id)
);

create table payment(
payment_id int,
cat_id int,
img_id int,
transaction_datetime datetime,
primary key(payment_id),
foreign key(cat_id) references category(cat_id),
foreign key(img_id) references images(img_id)
);

create table user_details(
user_id int,
f_name varchar(20),
l_name varchar(20),
dob date,
email nvarchar(255),
phone bigint,
add_id int,
primary key(user_id)
);

create table user_address(
add_id int,
user_id int,
village_town varchar(40),
city varchar(40),
pin nvarchar(10),
state varchar(20),
country varchar(20),
primary key(add_id)
);

alter table user_details
add foreign key(add_id) references user_address(add_id);

alter table user_address
add foreign key(user_id) references user_details(user_id);

create table employee(
emp_id int,
emp_name varchar(20),
emp_email nvarchar(255),
emp_dob date,
emp_mobile bigint,
emp_add varchar(255),
depart_id int,
primary key(emp_id)
);

create table department(
depart_id int,
depart_name varchar(20),
primary key(depart_id)
);

alter table employee
add foreign key(depart_id) references department(depart_id);

