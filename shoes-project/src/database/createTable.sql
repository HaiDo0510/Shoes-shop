create database project_niit;
use project_niit;
create table if not exists product(
	id int not null auto_increment,
    name varchar(100) not null,
    image varchar(3000) not null,
    price int not null,
    primary key (id)
);

create table if not exists admin(
	id int not null auto_increment,
    name varchar(20),
    username varchar(50),
    password varchar(50),
    primary key (id)
);
use project_niit;


create table if not exists order1(
	id int not null primary key auto_increment,
    id_product int not null,
    id_user int not null,
    product_number int not null,
    total_price int not null,
    constraint order_product foreign key (id_product) references product (id),
    constraint order_user foreign key (id_user) references user (id)
);
use project_niit;
create table if not exists user(
	id int not null auto_increment,
    firstName varchar(20),
    lastName varchar(20),
    email varchar(50) not null unique,
    passWord varchar(50) not null,
    primary key (id)
);

create table if not exists contact(
	id int not null primary key auto_increment,
    id_user int not null,
	name varchar(30),
    Email varchar(50) not null,
    phone varchar(20) not null,
    message varchar(5000),
    constraint contact_user foreign key (id_user) references user (id)
);

use project_niit;

create table if not exists category(
	id int not null auto_increment,
    id_product int not null,
    name varchar(100) not null,
    primary key (id),
    constraint category_product foreign key (id_product) references product (id)
);
