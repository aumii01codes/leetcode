#Percentage of Users Attended a Contest

select Register.contest_id, round((count(Register.user_id)/(select count(*) from Users)) * 100, 2) as percentage
from Users
inner join Register
on Register.user_id = Users.user_id
group by contest_id
order by percentage desc, contest_id asc
