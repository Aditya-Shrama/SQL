create table new123(id int, name varchar(20), salary int);
insert into new123 values(10, "abc", 990),
(11,"japan", 100);

select salary from new123 where id= 10 or id = 11;
 
 select * from new123
 where salary>any
	(select salary from new123 where id = 10 or id = 11);
    
 -- for all 
 
  select * from new123
 where salary<all
	(select salary from new123 where id = 10 or id = 11);
    
    
    