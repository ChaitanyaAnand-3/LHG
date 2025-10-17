/* Write your T-SQL query statement below */
select distinct author_id as id from(select *,case when author_id = viewer_id then 'yes' else 'no' end as filter from views) a
where filter = 'yes'
order by author_id

