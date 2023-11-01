use sakila;

#1 List the number of films per category.
select count(title), category_id
from film as f
inner join film_category as fc
on f.film_id=fc.film_id
group by category_id;

#2 Retrieve the store ID, city, and country for each store.
select store_id, city, country
from store as s
inner join address as a
on s.address_id=a.address_id
inner join city as c
on c.city_id= a.city_id
inner join country as country
on country.country_id= c.country_id;

#3 Calculate the total revenue generated by each store in dollars.
select sum(amount) as Revenue, staff.store_id
from store as s
inner join staff
on s.store_id=staff.store_id
inner join payment as p
on p.staff_id= staff.staff_id
group by store_id;

#4 Determine the average running time of films for each category.
select avg(length) as LENGTH, category_id
from film as f
inner join film_category as fc
on f.film_id=fc.film_id
group by category_id;

#5 Identify the film categories with the longest average running time

select avg(length) as AVERAGE_LENGTH, category_id
from film as f
inner join film_category as fc
on f.film_id=fc.film_id
group by category_id
order by AVERAGE_LENGTH desc
limit 5;

#6 Display the top 10 most frequently rented movies in descending order

select count(rental_date) as FREQUENCY, title
from film as f
inner join inventory as i
on i.film_id=f.film_id
inner join rental as r
on r.inventory_id= i.inventory_id
group by title
order by FREQUENCY desc
limit 10;


#7 Determine if "Academy Dinosaur" can be rented from Store 1

select title, s.store_id
FROM film as f
inner join inventory as i
on i.film_id=f.film_id
inner join store as s
on s.store_id= i.store_id
WHERE title LIKE '%Academy Dinosaur%' and s.store_id=1;
