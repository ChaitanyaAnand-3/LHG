/* Write your T-SQL query statement below */
with cte as(
select *,lead(num,1) over (order by id) as first_,
    lead(num,2) over (order by id) as second_
     from logs
) select distinct num as ConsecutiveNums from (select *,
    case when second_ is not null and num = first_ and num = second_ then 'yes' else 'no' end
    as deter from cte )  a
    where deter = 'yes'

