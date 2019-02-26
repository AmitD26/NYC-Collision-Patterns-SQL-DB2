with P as 
	(select zip_code, rank_population 
	from (select zip as zip_code, rank() over (order by population desc) as rank_population 
	from cse532.zipcensus) 
	where rank_population <= 10), 
C as (select zip_code, rank_collision_count 
	from (select zip_code, rank() over (order by count(*) desc) as rank_collision_count 
	from cse532.collision 
	group by zip_code 
	having zip_code>=0) 
	where rank_collision_count <= 10) 
select P.zip_code from P inner join C on P.zip_code=C.zip_code
