select * from users limit 3;

select * from `users` limit 3;

select count(*) from users limit 3;

select * 
from users 
where firstname = "pero";

select count(*) as perofci 
from users 
where firstname = "pero";

select * 
from users 
where firstname like "%o";

select distinct firstname 
from users;