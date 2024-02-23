# Write your MySQL query statement below
(select u.name as results
from MovieRating mr
left join Users u on mr.user_id = u.user_id
group by mr.user_id
order by count(*) desc, u.name asc
limit 1)
union all
(select title as results
from MovieRating m
left join Movies movie on m.movie_id = movie.movie_id
where month(created_at) = 2 and year(created_at) = 2020
group by title
order by avg(rating) desc, title asc
limit 1);