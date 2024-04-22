select * from `car dekho`;

select count(*) from `car dekho`;

-- total cars : to get count
select count(distinct name) from `car dekho`;

-- how many cars available for 2023
select count(*) from `car dekho`
where year = 2023;

select count(*) from `car dekho`
where year = 2021;
select count(*) from `car dekho`
where year = 2022;
select count(*) from `car dekho`
where year = 2020;

select year,count(year) 
from `car dekho`
group by year
order by count(year) desc;

-- how many diesel car available in 2017
select count(*) from `car dekho` 
where fuel = "diesel" and year = 2017;

-- how many petrol car available in 2017

select  count(*) from `car dekho`
where fuel = "petrol" and year = 2017;

-- petrol ,cng and diesel car 

select fuel, count(*) from `car dekho`
group by fuel;

-- petrol ,cng and diesel car year wise
select year, count(*) from `car dekho`
group by year
order by year desc;


select year, count(*) from `car dekho`
where fuel ="petrol"
group by year
order by year desc;

select year, count(*) from `car dekho`
where fuel ="CNG"
group by year
order by year desc;

select year, count(*) from `car dekho`
where fuel ="diesel"
group by year
order by year desc;
-- ----------------------------

select seats, avg(mileage) from `car dekho`
where transmission ="automatic"
group by seats;

select seats, avg(mileage) from `car dekho`
where transmission ="manual"
group by seats;