# Write your MySQL query statement below
select pro.product_name, s.year, s.price
from Sales s
left join Product pro on s.product_id = pro.product_id;