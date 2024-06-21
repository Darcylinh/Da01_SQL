___câu 1
SELECT name from STUDENTS 
where marks >75 
Order by right(name,3), ID 
  
___câu 2
SELECT user_id, 
 CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;

___câu 3
___ câu này kết quả chị sai mà c ko biết chỗ nào, em xem rồi chỉ chị nhé 

SELECT 
    manufacturer,
    CONCAT('$', TO_CHAR(ROUND(SUM(total_sales) / 1000000), 'FM999999999'), ' million') AS total_sales_million
FROM 
    pharmacy_sales
GROUP BY 
    manufacturer
ORDER BY 
    ROUND(SUM(total_sales) / 1000000) DESC, 
    manufacturer;

___câu 4
SELECT 
EXTRACT(MONTH FROM submit_date) AS review_month,
  product_id,
  ROUND(AVG(stars), 2) AS average_rating
FROM 
    reviews
GROUP BY 
    review_month, product_id
ORDER BY 
    review_month, product_id 
  
___câu 5
SELECT sender_id, 
COUNT(*) AS message_count
FROM messages
WHERE sent_date >= '2022-08-01' AND sent_date < '2022-09-01'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
  
___câu 6

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15

___câu 7
SELECT activity_date AS day,
COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY day
ORDER BY day

___câu 8
SELECT COUNT(*) AS total_hires
FROM employees
WHERE joining_date >= '2022-01-01' AND joining_date <= '2022-07-31' 
  
___câu 9
SELECT worker_id, 
first_name,
POSITION('a' IN first_name) AS first_a,
POSITION('a' IN SUBSTRING(first_name FROM POSITION('a' IN first_name) + 1))POSITION('a' IN first_name) AS second_a
FROM worker
WHERE first_name = 'Amitah'
  
___câu 10
SELECT substring(title, length(winery) + 2, 4)
FROM winemag_p2
WHERE country = 'Macedonia'
