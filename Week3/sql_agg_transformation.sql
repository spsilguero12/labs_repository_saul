use sakila;
#Challenge 1

#1

select max(length) as max_duration
from film;
select min(length) as min_duration
from film;

select round(avg(length)) as avg_length
from film;

#2
SELECT DATEDIFF(day, max(rental_date), min(rental_date))
from rental;

select max(rental_date)
from rental;

select min(rental_date)
from rental;


SELECT *,
case when dayofweek(rental_date) in (1,7) then 'Weekend' else 'Weekday' end as wd 
from rental
limit 20;


#3
select title, rental_duration,
case when rental_duration is null then 'Not availabe' else rental_duration end as Duration
from film;


#Challenge 2

#1
select count(title) 
from film
group by release_year;

select count(title) as film_count, rating
from film
group by rating;

select count(title) as film_count, rating
from film
group by rating
order by film_count desc;


#2
select round(avg(length),2) as average_duration, rating
from film
group by rating
order by average_duration desc;

select round(avg(length),2) as average_duration, rating
from film
group by rating
order by average_duration desc;



select round(avg(length),2) as average_duration, rating
from film
group by rating
HAVING  average_duration>120;




