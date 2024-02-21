# Write your MySQL query statement below
select employee_id, department_id
from Employee
where primary_flag='Y'
union all
select employee_id, department_id
from Employee
where employee_id not in 
    (select distinct employee_id
        from Employee
        where primary_flag='Y')
group by employee_id
having count(employee_id)=1;