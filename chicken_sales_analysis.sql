SELECT * FROM SALES_DATA;
use chicken_sales;
describe sales_data;
alter table sales_data
add column date_new Date;
update sales_data 
set date_new=str_to_date(date,'%Y-%m-%d');

select date, date_new
from sales_data
limit 10;

select date,length(date) as date_length,
concat('[',date,']') as check_date
from sales_data
limit 10;

select date,date_new
from sales_data
limit 10;

select date, cast(date as DATE) as converted_date
from sales_data
limit 10;

SET SQL_SAFE_UPDATES=0;
update sales_data
set date_new=cast(date as DATE);
select date,date_new
from sales_data
limit 10;

alter table sales_data
drop column date;
alter table sales_data
rename column date_new to date;

select date
from sales_data
limit 10; 

-- analyzing average revenue by day 
select day, avg(revenue) as avg_revenue
from  sales_data
group by day
order by avg_revenue desc;

-- analyzing average orders by day
select day, avg(orders) as avg_orders
from sales_data
group by day
order by avg_orders desc ;

select date ,
revenue, orders, revenue/orders as average_order_value 
from sales_data;

-- calculating average order value 
select round(sum(revenue)/sum(orders),2) as average_order_value 
from sales_data;

-- analyzing average order value by day type 
select type, sum(revenue)/sum(orders)as average_order_value 
from sales_data
group by type
order by average_order_value desc;

-- analyzing average order value by day
select day ,
sum(revenue)/sum(orders) as average_order_value 
from sales_data
group by day
order by average_order_value desc;

-- analyzing average revenue by day type 
select type, 
avg(revenue) as avg_revenue
from sales_data
group by type
order by avg_revenue desc;

-- analyzing average order by  day type
select type, avg(orders) as avg_orders
from sales_data
group by type
order by avg_orders desc;

-- comparing average revenue and average orders between clear and rainy/cloudy weather conditions
select 
case when weather='clear' then 'clear'
else 'rain/cloudy' end as weather_group,
count(*) as days,
round(avg (revenue),0) as avg_revenue,
round(avg(orders),0) as avg_orders
from sales_data
group by weather_group
order by avg_revenue desc;

-- -- identifying the best-performing day and the worst-performing day
select date, day,orders,revenue,aov from sales_data
order by revenue desc
limit 1;


select date, day,orders,revenue,aov from sales_data
order by revenue asc
limit 1;

