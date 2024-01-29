CREATE DATABASE regex;

USE regex;


CREATE TABLE employee(
	id INT PRIMARY KEY,
    NAME VARCHAR(10),
    sallary VARCHAR(10)
);

INSERT INTO employee
(id, name, sallary)
VALUES
(1,'ADAM', 25000),
(2,'BOB', 30000),
(3,'CASEY', 40000);

SELECT * FROM EMPLOYEE
