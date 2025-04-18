select e.s_id, s.name, s.start_year, COUNT(*) as passed_exams
from Exams e
left join Students s on e.s_id=s.s_id
group by e.s_id, s.name, s.start_year
order by e.s_id;