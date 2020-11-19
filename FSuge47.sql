/*b*/
USE sakila;

/*c*/
select * from actor;

show create table actor;

/*d*/
select * from actor 
where last_name = "CAGE";

/*e*/
select * from actor
where not first_name = "ZERO" and not first_name ="NICK";

/*f*/
select * from actor
where first_name in ('NICK', 'JOHNNY', 'JAMES', 'MORGAN', 
'WHOOPI');

/*g*/
select * from actor
where actor_id between 50 and 150;

/*h*/
select * from actor
where first_name like 'C%';

/*I*/
select * from actor
order by first_name;

/*J*/
select * from actor
order by last_name DESC;

/*K*/
select count(actor_id)
from actor;

/*L*/
select distinct first_name
from actor;

/*M*/
select * from film_category
where category_id in ("HORROR");

/*2 a*/
insert into actor (first_name, last_name)
values("FLORIAN", "SCHAFFER");
select *from actor
where last_name = "SCHAFFER";

/*B*/
insert into film_actor (actor_id, film_id)
values (201, 687);
insert into film_actor (actor_id, film_id)
values (201, 874);
insert into film_actor (actor_id, film_id)
values (201, 420);
insert into film_actor (actor_id, film_id)
values (201, 69);
insert into film_actor (actor_id, film_id)
values (201, 852);

/*C*/
update actor
set first_name = "FLEMSE", last_name = "NEJ"
where actor_id = 201;

/*D*/
delete from actor
where actor_id = 201;

/*3 a*/
select * from category;

/*B*/
SELECT  actor.first_name, actor.last_name, film.title, category.name FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film on film.film_id = film_actor.film_id
JOIN film_category on film_category.film_id = film_actor.film_id
JOIN category on category.category_id = film_category.category_id
WHERE category.category_id = 11;

/*4*/



