create schema cars;
use cars;

-- Read Data --
select * from car_dekho;

-- Total Cars : To get a count of total cars --
select count(*) from car_dekho;

-- Cars available in 2023 --
select count(*) from car_dekho
where year = 2023;

-- Cars available in 2020,2021 and 2023 --
select count(*) from car_dekho
where year in (2020, 2021, 2023)
group by year;

-- Print the total cars by year -- 
select year, count(*) from car_dekho 
group by year;

-- Diesel cars available in 2020 -- 
select count(*) from car_dekho
where year = 2020 and fuel = "Diesel";

-- Petrol Cars in 2020 -- 
select count(*) from car_dekho
where year = 2020 and fuel = "Petrol";

-- Print all Diesel , Petrol, CNG cars by all year -- 
select year , count(*) from car_dekho where fuel = "Petrol" group by year;
select year , count(*) from car_dekho where fuel = "Diesel" group by year;
select year , count(*) from car_dekho where fuel = "CNG" group by year;

-- Year which has more then 100 cars available --
select year, count(*) from car_dekho
group by year having count(*) > 100;

-- Year which has less then 100 cars available --
select year, count(*) from car_dekho
group by year having count(*) < 100;

-- All cars available between 2015-2023 -- 
select count(*) from car_dekho
where year between 2015 and 2023;

select count(*) from car_dekho
where year between 2015 and 2023 group by year;

select * from car_dekho
where year between 2015 and 2023;












