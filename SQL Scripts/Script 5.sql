select
s.*
from Students s
where not exists (
	select
	s_id
	from Exams e
	where e.s_id=s.s_id);