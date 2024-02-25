/* Write your T-SQL query statement below */
delete
from Person
where id not in (
    select min(id) as max_id
    from Person
    group by email
);