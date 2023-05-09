create database book_storage;
use book_storage;

create table users(
user_id int not null primary key auto_increment,
name varchar(20),
email varchar(30),
address varchar(50),
phoneNumber int,
role int (10) -- (admin/customer)-- 
);

CREATE TABLE books(
	book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20),
    author varchar(30),
    type_id int,
    price INT(10),
    image longtext,
    publisher_id int,
    foreign key ( publisher_id ) references publishers(publisher_id),
    foreign key (type_id) references types(type_id)
);

CREATE TABLE publishers(
publisher_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
publisherName Varchar(50)
);

create table orders(
order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id int (10),
date datetime,
totalPrice INT(10),
status int (10),
Foreign key (user_id) references users(user_id)
);

Create table order_details(
order_id int (10),
book_id int (10),
quantity int,
foreign key (order_id) references orders(order_id),
foreign key (book_id) references books(book_id)
);

create table types (
type_id int not null primary key auto_increment,
typeName varchar(30)
);
