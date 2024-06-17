___câu 1
SELECT distinct city from station
where ID%2 = 0

___câu 2
Select count(city) - count(distinct city)
from station 

___câu 3


___câu 4
select
ROUND(cast(SUM(item_count * order_occurrences) /SUM(order_occurrences) as decimal),1)
FROM items_per_order;

___câu 5
SELECT candidate_id
from candidates 
where skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(DISTINCT skill)=3
ORDER BY candidate_id

___câu 6

select user_id
DATE(max(post_date)) - DTAE(min(post_date)) as days_between
from post
where post_date>='2021-01-01'AND post_date<'2022-01-01'
group by user_id
HAVING COUNT(post_id)>=2
  
___câu 7
  
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) AS largest_disparity
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY card_name DESC
  
___câu 8

SELECT manufacturer,
COUNT(distinct drug) AS the_no_of_drugs_with_losses,
SUM(cogs - total_sales) AS total_losses
FROM pharmacy_sales
where cogs > total_sales
GROUP BY manufacturer
ORDER BY total_losses DESC

___câu 9
  
select id, movie, description, rating
from cinema
where id%2=1 and description !='boring'
order by rating desc 
  
___câu 10
  
SELECT teacher_id, 
COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
ORDER BY teacher_id;

___câu 11
  
SELECT user_id,
COUNT(follower_id) AS followers_count 
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;

___câu 12
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5;

