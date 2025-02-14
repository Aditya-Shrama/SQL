use sakila;
show tables;
select * from  actor;

-- string

select first_name, last_name
concat_ws('-', first_name, last_name)
from actor;

select * from actor
where concat(first_name,last_name)= "EDCHASE";

-- substring

select first_name,
substr(first_name,1),
substr(first_name,1,3) from actor;

-- reverse

select first_name,
substr(first_name,-3),
substr(first_name,1,3) from actor;

-- instr "extract position of data"

select first_name,
instr(first_name,'E') from actor;

-- char -- functions


select first_name,
instr(first_name,'E'),
char_length (first_name)
from actor;

-- length
-- only for string and return into bytes
-- where as char_lenght counts the lenght of charachter


-- dual table ??
-- dummy table use for logic building

select 'hi','hello' from dual;

select length('character'), char_length('character');

-- padding 

select amount from payment;

select first_name, lpad(first_name,5,'$') from actor;

select first_name, rpad(first_name,5,'$') from actor;


-- remove widespace

select '   hey    ',
trim('    hey    ')from dual;

select '         hey           ',
trim(leading 'z' from 'zzzzzeeehhz') from dual;

-- for last removal
select '         hey           ',
trim(trailing 'z' from 'zzzzzeeehhz') from dual;

-- for both side removal

select '         hey           ',
trim(both 'z' from 'zzzzzeeehhz') from dual;


-- replace

select first_name, replace(first_name, 'E','a') from actor;
 