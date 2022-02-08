-- #### 1 ####
select count(*) 
from actor
where last_name = 'Wahlberg';

-- #### 2 ####
select count(*)
from payment
where amount between 3.99 and 5.99;

-- #### 3 ####
select film_id, COUNT(film_id)
from inventory
group by film_id 
order by COUNT(film_id)	desc;
--8 is the highest quantity of any film in inventory
--but there are 72 films at inventory count of 8 copies each

-- #### 4 ####
select count(*)
from customer
where last_name = 'William';
-- there are no customers with the last name of William
-- there is 1 with last name Williams 
-- and 1 with first name William

-- #### 5 ####
select first_name, last_name, staff.staff_id, count(staff.staff_id) 
from payment
join staff on payment.staff_id = staff.staff_id
group by staff.staff_id
order by count desc
limit 1;

-- #### 6 ####
select count(distinct district)
from address;

-- #### 7 ####
select title, film.film_id,  count(film.film_id) 
from film_actor
join film on film_actor.film_id = film.film_id
group by film.film_id  
order by count(film.film_id) desc
limit 1;

-- #### 8 ####
select count(*)
from customer
where last_name like '%es' and store_id = 1;

-- #### 9 ####
select amount, count(amount) 
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

-- #### 10 ####
select count(distinct rating)
from film;

select rating, count(film_id)
from film
group by rating
ORDER BY count DESC 
LIMIT 1;
