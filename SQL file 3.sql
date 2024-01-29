-- subquery (query inside another query)
use employees;
select * from dept_emp;

select dept_no from dept_emp
where emp_no = 10005;

select * from dept_emp where
dept_no = (select dept_no from dept_emp where emp_no = 10005);




 -- Q. 2 now, get the dept_no for all the employees where the no of employees working is > than the no of employees 
 -- working in d001

select dept_no from dept_emp
where emp_no = d005;

select * from dept_emp where
dept_no = (select dept_no from dept_emp where emp_no

select dept_no, count(*)
from dept_emp group by dept_no
having count(*) >

(select count(*)
from dept_emp where dept_no = "d001" group by dept_no );



-- SELECT dept_no
-- FROM dept_emp
-- WHERE num_of_employees > (SELECT num_of_employees FROM employees WHERE dept_no = 'd001');




-- get all the informatio of the user where the joining year of the user is same as the joinig of the 
-- emp no 10039

select (from_date) from dept_emp
where emp_no = 10039;
-- 1988

select * from dept_emp where
from_date = (select from_date  from dept_emp where emp_no = 10039);




--  get the emp no department no and the month from the dep_emp table where
--  the month matches with the month of the emmploye no = 10039;

select from_date from dept_emp
where emp_no = 10039;

select * from dept_emp where
month(from_date) = (select month(from_date) from dept_emp where emp_no = 10039);



select * 
from dept_emp where dept_no IN
(select dept_no
from dept_emp where emp_no = 10001 or emp_no = 10002);


