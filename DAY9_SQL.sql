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
___câu 4
___câu 5
