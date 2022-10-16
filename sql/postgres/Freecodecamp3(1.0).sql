CREATE TABLE car(
  id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  model_name VARCHAR(10)
);

CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  salary INT,
  -- car_id int,
  -- foreign key(car_id) REFERENCES car(id) on DELETE set null,
  car_id int REFERENCES car(id) on DELETE set null,
  
  unique(car_id)
  
);

INSERT INTO employee(emp_id, first_name, last_name,salary, car_id) VALUES(101, 'Jan', 'Levinson', 40000, null);
INSERT INTO employee VALUES(102, 'san', 'Levinson', 50000);
INSERT INTO employee VALUES(103, 'dav', 'Levinson', 220000);
INSERT INTO car VALUES(001, 'maruti','x00021');
INSERT INTO car VALUES(003, 'mercedes','x0x5oF9');
INSERT INTO car VALUES(009, 'tesla','xACE09TY');
-- select * from employee;
-- select * from car;

update employee set car_id = 001 where emp_id= 103;
update employee set car_id = 003 where emp_id= 102;
select * from employee;

---------------------------------------------------------------------------------------
--              JOIN
-- COMBINES ROWS ON THE BASE OF THE RELATED COLUMNS BETWEEN THE TABLES
-- A PostgreSQL Join statement is used to combine data or rows from one(self-join) or more tables based on a common field between them. These common fields are generally the Primary key of the first table and Foreign key of other tables.

-- There are 4 basic types of joins supported by PostgreSQL, namely:
--     Inner Join
--     Left Join
--     Right Join
--     Full Outer Join
-- Some special PostgreSQL joins are below:
--     Natural Join
--     Cross Join
--     Self Join
select employee.emp_id, employee.first_name, employee.last_name, car.branch_name 
from employee
-- join car
-- left join car
-- right join car
full outer join car
on employee.car_id=car.id;



