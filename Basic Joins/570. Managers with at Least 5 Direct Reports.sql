-- # Write your MySQL query statement below
select name
from Employee
where id in (
    select distinct id
    from (
        select e1.id, count(e1.id) over(partition by e1.id) as leader
        from Employee e1
        left join Employee e2 on e1.id = e2.managerId
    ) t
    where leader>=5
)