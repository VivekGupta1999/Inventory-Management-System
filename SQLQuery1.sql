﻿create table products
(
pro_id int not null identity primary key,
pro_name varchar(60) not null,
pro_barcode nvarchar(50) not null,
pro_expiryData date
)
create table suppliers(
sup_id int not null identity primary key,
sup_name varchar(50) not null,
sup_address varchar(100) not null,
sup_phone varchar(15) not null,
sup_openingBalance money not null default 0
)
create table purchaseInvoice
(
pi_id bigint not null identity primary key,
pi_date date not null,
pi_suppID int not null foreign key references suppliers(sup_id) on delete no action on update no action
)
drop table PIDetails
create table PIDetails
(
pid_id bigint not null identity primary key ,
pid_purchaseID bigint not null foreign key references purchaseInvoice(pi_id) on delete no action on update no action,
pid_proID int not null foreign key references products(pro_id) on delete no action on update no action

)
create table Stock
(
st_id int not null identity primary key,
st_proID int not null,
st_quant int not null
)