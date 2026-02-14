--procedure for checking balance of an user

delimiter $$
create procedure check_balance(
in uid int)
begin 
insert into transactions(user_id,txn_type,amt,balance_after,status)
select user_id ,'BALANCE_CHECK' ,amt,balance,'SUCCESS' from users where user_id=uid;
 select balance from users where user_id=uid;
 end $$

--procedure for validating pin
 delimiter $$
 create procedure validate_pin(
  in uid int,
  in entered_pin int)
  begin 
  if exists( select 1 from users where user_id=uid and pin=entered_pin)
  then select 'Login Successful' as status;
  else select 'Invalid pin' as status;
  end if;
  end $$
    
 --procedure for depositing money
delimiter $$
create procedure deposit_money(
	in uid int,
    in amt decimal(10,2)
    )
    begin
    update users
    set balance =balance+amt where user_id=uid;
    insert into transactions (user_id,txn_type,amt,balance_after,status)
    select user_id ,'DEPOSIT', amt,balance,'SUCCESS'
    from users where user_id=uid;
    select "Amount deposited successfully " as status;
end $$

--procedure for withdrawing money
delimiter $$
create procedure withdraw_money(
in uid int,
in amt decimal(10,2))
begin 
	declare current_bal decimal(10,2);
    select balance into current_bal from users where user_id=uid;
    if current_bal>=amt then
		update users
        set balance =balance-amt where user_id=uid;
        insert into transactions  (user_id,txn_type,amt,balance_after,status)
    select user_id , 'WITHDRAW', amt,balance,'SUCCESS' from users where user_id=uid;
    select "Amount withdrawn successfully" as status;
    else
    insert into transactions  (user_id,txn_type,amt,balance_after,status)
    select user_id , 'WITHDRAW', amt,balance,'FAILED' from users where user_id=uid;
    SELECT "INSUFFICIENT BALANCE" as status;
    end if;
     
end $$
--procedure for checking transaction of a specific user
delimiter $$
create procedure check_transactions(
in uid int)
begin 
select txn_type,amt,balance_after,txn_time,status from transactions where user_id=uid order by txn_time desc;
end $$
