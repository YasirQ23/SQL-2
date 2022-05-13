create table movies(
film_id serial primary key,
title varchar(30),
description varchar(300),
release_date varchar(30)
);

create table tickets(
employee_id serial primary key,
employee_name varchar(40),
price numeric(4,2),
quanity int,
film_id int,
foreign key(film_id) references movies(film_id)
);

create table customers(
customer_id serial primary key,
first_name varchar(30),
last_name varchar(30),
loyalty_member bool
);

create table concessions(
foreign key(employee_id) references tickets(employee_id),
foreign key(customer_id) references customers(customer_id),
employee_id int,
customer_id int,
quantity int,
total_cost numeric (5,2)
);


insert into movies (title,description,release_date)
values ('Top Gun','Testosterone dog fights love intrest lose why did they take goose too soon too soon','May 16 1986');

insert into movies (title,description,release_date)
values ('Midsommar','Sadness more sadness creepy then some more Fd up stuff end is kind of a win for the main charcter i guess','July 3 2019');

insert into movies (title,description,release_date)
values ('Donnie Darko','time travel giant rabbit or bunny existential crisis cult following','Jan 19 2001');

select *
from movies;

insert into tickets (employee_name, price, quanity, film_id)
values ('Zane Longbottom','9.98','4','1');

insert into tickets (employee_name, price, quanity, film_id)
values ('Ryan Nayr','12.50','2','3');

insert into tickets (employee_name, price, quanity, film_id)
values ('Ben Chillin','14.95','1','2');

insert into tickets (employee_name, price, quanity, film_id)
values ('Ryan Nayr','12.50','2','3');

insert into tickets (employee_name, price, quanity, film_id)
values ('Ryan Nayr','12.50','2','3');

select *
from tickets;

insert into customers (first_name,last_name,loyalty_member)
values ('Bob','Dylan','1');

insert into customers (first_name,last_name,loyalty_member)
values ('Eric','Dylan','False');

select *
from customers;

insert into concessions (employee_id,customer_id,quantity,total_cost)
values ('1','3','7','73.52');

insert into concessions (employee_id,customer_id,quantity,total_cost)
values ('2','1','3','21.33');

insert into concessions (employee_id,customer_id,quantity,total_cost)
values ('3','2','4','93.44');

select * 
from concessions;

