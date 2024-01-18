show databases;

use sakila;


-- to show tables

show tables;

describe actor;

-- to extract data-- 
select * from actor;

select first_name, FIRST_NAME, actor_id, actor_id*10 "new_actor"
from actor;

select * from actor;

-- where clause for conditioning statment

select* from actor where actor_id = 3;

select* from actor where actor_id < 3;

select* from actor where actor_id > 3;

SELECT* FROM city
Where city_id > country_id;

select* from actor
where first_name ="NICk";

-- selection where data rows sort and (condition) Pojection is where column sort (selection)

-- between operator(for comparision)

select*from actor where actor_id between 2 and 5;

select*from actor where actor_id not between 2 and 5;

-- in operator for specific value

select* 
from actor
-- where actor_id in (2,4,8,10333);
where actor_id not in (2,4,8,10333);

 -- DAY - 2
 
 
-- LIKE OPERATOR 
-- % ( zero or more character) 

SELECT * FROM  ACTOR WHERE first_name = 'NICK';

SELECT * FROM  ACTOR WHERE first_name like  'N%';
SELECT * FROM  ACTOR WHERE first_name like  '%N';

SELECT * FROM  ACTOR WHERE first_name like  '%VI%';

SELECT * FROM  ACTOR WHERE first_name like  '__I%';

-- LOGICAL OPERATOR
-- (AND, OR OPERATOR)

select * from actor
where first_name = "NICK" and actor_id = 44;

select * from actor
where first_name = "NICK" or actor_id = 44;

select * from actor
where first_name = "NICK" or actor_id in (32, 100);


-- from the customer table get all the customer id and first_ name where the first name is "patrika" or "marry"  and customer id = "2"

select customer_id, first_name 
from customer where
	(first_name  = "patricia" or first_name =  "mary") and customer_id = 2;
 
 -- assigment 
-- create database xyz 
-- use xyz;
-- create table tushar(name varchar(20));

-- insert into tushar values("pet"), ("petter"),("pe%"), ("pe");
-- select * from tushar where name like "pe%";


-- strings functions, , maths functions
-- general functions/ null functions


-- to handle null values 

use sakila;
select  * from address;

select postal_code, length(postal_code) from address;

select * from address
where postal_code =" "; 

select * from address
where address2 = '';


select password, email from staff
where password is not null;


select password, ifnull(password,1000),email from staff;


select actor_id,first_name,
  case first_name
	when 'NICK' then actor_id*10
    when "PENELOPE" then actor_id*10
    else actor_id
 end "new_actor_id"
	from actor;



select actor_id,first_name,
  case 
	when first_name = 'NICK' then actor_id*10
    when first_name= "PENELOPE" then actor_id*10
    else actor_id
 end "new_actor_id"
	from actor;
    
    
-- print the actor id, first_name, further user based of  certain condition.
-- 1. if the actor_id < = 2then print actor id is more than 2
-- if the acotrd id b/w 5 to 7 print id b/w 5-7

-- if the actor id is more than 12 print actor id is more than 12
-- else print the no condition verified

    

select actor_id,first_name,
  case 
	when actor_id > 2 then " Actor Id is more than 2"
    when actor_id  between 5 and 7 then "actor_id is between 5 and 7"
    when actor_id > 12 then "actor_id is more than 12"
    else "no condition is verified"
    
 end "new_actor_id"
	from actor;


use sakila;
select * from actor;

desc actor;

select curdate(),adddate(curdate(),1) from dual;
select curtime() from dual;

select now() from dual;

select last_update, adddate(last_update ,1 )
from actor;

select last_update, adddate(last_update ,interval 3 hour)
from actor;

select datediff( curdate(), "2024-01-20") from dual;

select date_format( curdate(), "%Y-%M-%D") from dual;

select FROM_UNIXTIME(14447430940);

select district, count(*), sum(city_id)
from address group by district
order by count(*) desc;

select district, count(*), sum(city_id)
from address group by district
having count(*) >= 9
order by count(*) desc;















