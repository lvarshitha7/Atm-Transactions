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
