# Write your MySQL query statement below
select a.ID as ID
from Weather a, Weather b
where datediff(a.recordDate, b.recordDate)=1
and b.temperature < a.temperature;