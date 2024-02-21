# Write your MySQL query statement below
select distinct num as ConsecutiveNums
from (
    select *,
        lead(num) over (order by id) as next_num,
        lag(num) over (order by id) as previous_num
    from Logs
) t
where num=next_num and num=previous_num;