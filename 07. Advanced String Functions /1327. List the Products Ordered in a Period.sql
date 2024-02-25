# Write your MySQL query statement below
select product_name, sum(unit) as unit
from (
    select o.*, product_name
    from Orders o
    left join Products p on o.product_id = p.product_id
    where month(order_date)= 2 and year(order_date)=2020
) t
group by product_name
having sum(unit)>=100;