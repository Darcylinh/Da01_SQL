___ câu 1
select name from city
where population > 120000
and countrycode ='USA'

___ câu 2 
select * from city
where contrycode ='JPN'

___câu 3
select city, state from station 

___CÂU 4
select distinct city
from station
where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like'U%' 

___CÂU 5
SELECT distinct CITY 
FROM STATION
where city like '%A' or city like '%E' or city like '%I'  or city like '%O'  or city like '%U'

___câu 6
select distinct city
from station 
where city not like 'A%' and city not like 'E%' and city not like 'I%' and city not like 'O%' and city not like 'U%'

___câu 7
select name from employee
order by name

___câu 8
select name from employee
where salary >2000
and months <10

___câu 9
select product_id from products
where low_fats='Y'
and recyclable='Y'

___câu 10
select name from customer
where referee_id !='2' 
or referee_id ='null'

___câu 11
select name, population, area 
from World
where area >= 3000000
or population >= 25000000
  
___câu 12
select distinct author_id 
from views
where author_id = viewer_id
order by author_id
  

___câu 13
SELECT part
from parts_assembly
where finish_date is null 
  

___câu 14
select year_salary from lyft_drivers
where year_salary <= 30000 or year_salary >=70000  

___câu 15
select advertising_channel
from uber_advertising
where money_spend >100000 year in (2019)
