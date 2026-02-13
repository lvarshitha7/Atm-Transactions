create database atm_db;
use atm_db;
create table users(
	user_id int primary key,
    name varchar(40),
    pin int not null,
    balance decimal(10,2));
-- Sample values
insert into users values
(101, "Varshitha" , 1234, 50000);
select * from users;
insert into users values
(102, "Pooja" , 4321 , 5000);
