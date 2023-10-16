create database online_watch_shopping_system;

use online_watch_shopping_system;

create table user_signup
(
  id int primary key auto_increment,
  first_name nvarchar(200),
  last_name nvarchar(200),
  address nvarchar(200),
  email_id nvarchar(200),
  contact nvarchar(200),
  user_name nvarchar(200),
  password nvarchar(200),
  conform_password nvarchar(200)
);

create table booking_page
(
  id int primary key auto_increment,
  watch_name varchar(200),
  color varchar(200),
  
  price varchar(200),
  features varchar(200)
);

create table add_to_cart
(
  id int primary key auto_increment,
  user_id int,
  watch_id int,
  watch_name nvarchar(50),
  features nvarchar(50),
  select_image nvarchar(100),
  price bigint,
  color nvarchar(50),
  date nvarchar(45)
  
);

create table my_orders
(
  id int primary key auto_increment,
  user_id int,
  watch_id int,
  watch_name nvarchar(50),
  features nvarchar(50),
  select_image nvarchar(100),
  price bigint,
  color nvarchar(50),
  date nvarchar(45),
  quantity nvarchar(45),
  total nvarchar(45),
  delivery_date nvarchar(45),
  order_status nvarchar(45)
  
);

create table product_report
(
  id int primary key auto_increment,
  user_name varchar(200),
  feedback varchar(200)
  
);

create table user_profile
(
  bookingid int primary key auto_increment,
  name nvarchar(200),
  surname nvarchar(200),
  contact bigint(200),
  email_id nvarchar(200),
  address nvarchar(200),
  pincode bigint
);

create table user_payment
(
  id int primary key auto_increment,
  user_id int,
  name nvarchar(200),
  phone_no bigint,
  amount bigint,
  payment_method nvarchar(200),
  card_no bigint  
);      

create table address
(
  id int primary key auto_increment,
  name varchar(200),
  contact bigint(200),
  line_no_1 varchar(200),
  pincode bigint(200),
  city varchar(200),
  state varchar(200)
);

create table admin_assistant
(
  id int primary key auto_increment,
  watch_name varchar(200),
  color nvarchar(200),
  features varchar(200),
  launch_date varchar(200),
  select_image varchar(200),
  price bigint(50),
   date date
);

create table admin_signup
(
  id int primary key auto_increment,
  admin_name varchar(200),
  mobile_no varchar(200),
  city varchar(200),
  email_id varchar(200),
  user_name varchar(200),
  password varchar(200),
  conform_password varchar(200)
);

create table money_rec
(
 id int primary key auto_increment,
 name varchar(200),
 email_id varchar(200),
 phone_no varchar(200),
 watch_name varchar(200),
 amount bigint user_payment
);





















