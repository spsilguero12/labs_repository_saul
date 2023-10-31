use sakila;

#1
show tables;
#2
select * from actor;
select * from film;
select * from customer;

#3
select title from film;
select distinct name from language;
select first_name from staff;

#4
select distinct release_year from film;

#5 
select store_id from store;
select staff_id from staff;
select count(rental_date) from rental;
select count(return_date) from rental;
select distinct last_name from actor;

#6
SELECT title
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

#7
select first_name, last_name 
from actor 
where first_name= "SCARLETT";

#8
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' and length>100;