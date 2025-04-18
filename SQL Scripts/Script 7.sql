select e.c_no , c.title, c.hours, AVG(e.score) as average_point
from Exams e 
left join Courses c on e.c_no=c.c_no
group by e.c_no, c.title, c.hours
order by average_point desc;