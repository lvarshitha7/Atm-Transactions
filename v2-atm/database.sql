create database atm_db;
--create table named users
create table users(
	user_id int primary key,
    name varchar(40),
    pin int not null,
    balance decimal(10,2));

--insert values into users
insert into users values
(101, "Varshitha" , 1234, 50000);
insert into users values
(102, "Pooja" , 4321 , 5000);


create table transactions(
	txn_id int auto_increment primary key,
    user_id int,
    txn_type varchar(20),
    amt decimal(10,2),
    balance_after decimal(10,2),
    txn_time timestamp default current_timestamp,
    status varchar(20),
    foreign key (user_id) references users(user_id));
