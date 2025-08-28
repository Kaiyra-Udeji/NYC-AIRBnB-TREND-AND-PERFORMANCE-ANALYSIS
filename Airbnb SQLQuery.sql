use AirBnB
go

select * from AB_NYC_2019

-- 1. which host has the highest listings?

select host_id, sum (calculated_host_listings_count) as Total_listings from AB_NYC_2019
group by host_id
order by Total_listings DESC


-- 2. which neighborhood has the most priced services?
 
select top 10 price, neighbourhood from AB_NYC_2019
order by price DESC


-- 3. which host is the most reviewed?
 
select top 10 host_id,sum (number_of_reviews) as Total_reviews from AB_NYC_2019
group by host_id
order by Total_reviews DESC


-- 4. what are the unique room types provided by NYC AirBnB?

select distinct room_type from AB_NYC_2019