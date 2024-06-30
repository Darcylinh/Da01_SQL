____câu 1
SELECT
SUM(CASE WHEN device_type = 'laptop'THEN 1 ELSE 0 END)
  AS laptop_views,
SUM(CASE WHEN device_type IN ('tablet','phone') THEN 1 ELSE 0 END)
  AS mobile_views
from viewership
  
___câu 2
select x,y,z,
 case when x+y>z AND x+z>y AND y+z>x then 'Yes' else 'No' END
 AS triangle
From Triangle

___câu 3
SELECT
  ROUND(
   CAST(
  (SUM(CASE WHEN call_category = 'n/a' or call_category is null THEN 1 ELSE 0 END)) * 100/ COUNT(*)
AS DECIMAL),1)
 AS uncategorised_call_pct
 FROM callers
  
___câu 4
select name
from Customer
where referee_id !=2 or referee_id is null
  
___câu 5
select survived,
 sum(case when pclass=1 then 1 else 0 end) as first_class,
 sum(case when pclass=2 then 1 else 0 end) as second_class,
 sum(case when pclass=3 then 1 else 0 end) as third_class
from titanic
group by survived
