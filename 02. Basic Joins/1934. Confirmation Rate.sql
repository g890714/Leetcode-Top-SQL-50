# Write your MySQL query statement below
select user_id, round(avg(action_count),2) as confirmation_rate
from(
    select 
        s.user_id, 
        c.time_stamp, 
        case when c.action='confirmed' then 1
        else 0 end as action_count
    from Signups s
    left join Confirmations c on s.user_id=c.user_id
)t
group by user_id;