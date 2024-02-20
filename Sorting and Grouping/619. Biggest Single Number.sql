# Write your MySQL query statement below
select 
    max(num) as num
from (
    select num, count(num) as cnt
    from MyNumbers
    group by num
) t
where cnt=1
order by num desc
limit 1;