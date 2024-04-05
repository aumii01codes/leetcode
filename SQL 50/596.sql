#Classes More Than 5 Students

select class from Courses
group by class
having count(distinct student)>=5;
