/* Write your T-SQL query statement below */
WITH CTE AS(
    SELECT *,ROW_NUMBER() OVER (PARTITION BY PLAYER_ID ORDER BY event_date ) as rank
     FROM ACTIVITY
    
)SELECT player_id,event_date as first_login from cte
where rank =1