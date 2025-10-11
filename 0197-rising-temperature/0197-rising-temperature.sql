select a.id as Id
from weather a
left join weather b
on datediff(a.recordDate, b.recordDate) = 1
where a.temperature > b.temperature
order by a.recordDate 