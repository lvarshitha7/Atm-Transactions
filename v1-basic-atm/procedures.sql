--procedure for validating pin
use atm_db;
delimiter $$
create procedure validate_pin(
in uid int,
in entered_pin int 
)
begin 
if exists (
select * from users where user_id=uid and pin=entered_pin
) then 
 select 'Login successful' as status ;
else 
select 'Login Failed' as status ;
end if;
end $$
delimiter ;
--procedure for check balance
use atm_db;
delimiter ^^
create procedure check_balance (
in uid int
)
begin 
	select balance from users where user_id=uid;
end ^^
delimiter ;
--procedure for depositing money
delimiter %%
create procedure deposit_money(
	in uid int,
	in amt decimal(10,2)
 )
 begin
	update users
	set balance=balance+amt
	where user_id=uid;
	select 'Amount deposited' as status;
end %%
delimiter ;
--procedure for withdrawing money
delimiter $$
create procedure withdraw_money(
	   in uid int,
    in amt decimal(10,2)
    )
begin
	declare current_bal decimal(10,2);
    select balance into current_bal from users where user_id=uid;
    
 if current_bal>=amt then
		update users
		set balance=balance-amt
		where user_id=uid;
		select 'Withdraw Successful' as status;
	else 
		select 'Insufficient Balance' as status;
 end if;
end$$
delimiter ;
