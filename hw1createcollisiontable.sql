create table cse532.collision(
date date,
time time,
zip_code int,
latitude double,
longitude double, 
contributing_factor_vehicle1 varchar(500),
contributing_factor_vehicle2 varchar(500),
unique_key int not null primary key,
vehicle_type_code_1 varchar(500),
vehicle_type_code_2 varchar(500))
