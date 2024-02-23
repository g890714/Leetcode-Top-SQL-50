# Write your MySQL query statement below
select Department, Employee, Salary
from (
    select d.name as Department, e.name as Employee, salary as Salary,
        dense_rank() over (partition by d.name order by e.salary desc) as rank_
    from Employee e
    left join Department d on d.id = e.departmentId
) t
where rank_<=3;