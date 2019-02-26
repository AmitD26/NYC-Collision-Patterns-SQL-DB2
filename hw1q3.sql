with C as 
	(select latitude, longitude, count(*) as collision_count 
	from cse532.collision 
	where zip_code is not null and latitude is not null and longitude is not null 
	group by(latitude, longitude) 
	order by collision_count desc 
	fetch first 10 rows only), 
Z as (select distinct zip_code, latitude, longitude 
	from cse532.collision 
	where zip_code is not null and latitude is not null and longitude is not null) 
select Z.zip_code, Z.latitude, Z.longitude from C inner join Z on C.latitude=Z.latitude and C.longitude=Z.longitude
