/* Write your T-SQL query statement below */
select 
    customer_number  from (select customer_number ,
    count(*) as count from orders group by customer_number  ) a
    where count = (select max(count) from (select customer_number ,
    count(*) as count from orders  group by customer_number ) b);
