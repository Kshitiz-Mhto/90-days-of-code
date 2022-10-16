CREATE TABLE car(
  id bigserial PRIMARY KEY,
  branch_name VARCHAR(40),
  model_name VARCHAR(10)
);

CREATE TABLE employee (
  emp_id bigserial PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  salary INT,
  -- car_id int,
  -- foreign key(car_id) REFERENCES car(id) on DELETE set null,
  car_id int REFERENCES car(id) on DELETE set null,
  unique(car_id)
  
);

INSERT INTO employee(first_name, last_name,salary, car_id) VALUES('Jan', 'Levinson', 40000, null);
INSERT INTO employee(first_name, last_name,salary) VALUES('san', 'Levinson', 50000);
INSERT INTO employee(first_name, last_name,salary) VALUES('dav', 'Levinson', 220000);
INSERT INTO car(branch_name, model_name) VALUES('maruti','x00021');
INSERT INTO car(branch_name, model_name) VALUES('tesla','xACE09TY');
INSERT INTO car(branch_name, model_name) VALUES('mercedes','x0x5oF9');

---------------------------------------------------------------------------------
--            Bigserial and sequence


-- PostgreSQL has a special kind of database object generator called SERIAL. 
-- It is used to generate a sequence of integers which are often used as the Primary key of a table. 
-- Syntax: variable_name SERIAL
-- By assigning the SERIAL to the id column, PostgreSQL carries out the following: 
--     The initial step generates sequences of integers, where the next default value depends upon the value for the column.
--     As SERIAL always generates a sequence of integers, it is important to set that no null value is added as an ID to any column. This is done by adding the NOT NULL constraint.
--     Finally, it is needed to set t5he owner of the sequence for the ID column. These IDs are automatically deleted if the column or table is dropped. 

\d car
\d employee
\d

select * from employee_emp_id_seq; -- provide last number of row
select * from car_id_seq;
select * from nextval('employee_emp_id_seq'::regclass);
select * from nextval('employee_emp_id_seq'::regclass);
select * from nextval('employee_emp_id_seq'::regclass);
select * from nextval('employee_emp_id_seq'::regclass);
select * from nextval('employee_emp_id_seq'::regclass);
INSERT INTO employee(first_name, last_name,salary) VALUES('davi', 'Levinson', 220000);
select * from nextval('car_id_seq'::regclass);
select * from nextval('car_id_seq'::regclass);
select * from nextval('car_id_seq'::regclass);
select * from nextval('car_id_seq'::regclass);
INSERT INTO car(branch_name, model_name) VALUES('Hoonda','x0232oF9');
select * from employee;
select * from car;

select * from employee_emp_id_seq; -- 9
select * from car_id_seq;-- 8
-- altering the sequence 
alter sequence employee_emp_id_seq restart with 14;
alter sequence car_id_seq restart with 32;

select * from employee_emp_id_seq; -- 9
select * from car_id_seq;-- 8
