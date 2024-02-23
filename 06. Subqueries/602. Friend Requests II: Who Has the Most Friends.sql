# Write your MySQL query statement below
with cte as (
    select requester_id as id, accepter_id as a2
    from RequestAccepted
    union all 
    select accepter_id as id, requester_id as a2
    from RequestAccepted
)
select id, count(*) as num
from cte
group by id
order by count(*) desc
limit 1;