#Taller 2_3

Este es el formulario de registro 
![image](https://github.com/NicoYwY/taller2-3/assets/125584676/153fa7df-0980-40ea-9e84-1ab3b2e26f87)


Este es login 

![image](https://github.com/NicoYwY/taller2-3/assets/125584676/70f6e933-313a-4b5c-b3f1-66a6a2975c31)

Codigo de creacion de base de datos:


create database myapp;

use myapp;

create table users_tbl(
user_id int primary key auto_increment,
user_firstname varchar(40) not null,
user_lastname varchar (40) not null,
user_email varchar (60) not null,
user_password varbinary(256)
);

insert into myapp.users_tbl(user_firstname,user_lastname,user_email,user_password) values (upper('Nicolas'),upper('Zuñiga Rodriguez'),lower ('nicolas.music@gmail.com'), aes_encrypt('2N0I0C6OOO', '$2a$12$h3uBgKE.9Clbvn.Y1qU4ket8.rI5lkMctyyeXvVfYiwNsncfbdJcG'));

select*,
cast(aes_decrypt(user_password,'$2a$12$h3uBgKE.9Clbvn.Y1qU4ket8.rI5lkMctyyeXvVfYiwNsncfbdJcG') as char(50)) end_data from users_tbl where user_id=1;


