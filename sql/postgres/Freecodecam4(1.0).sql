CREATE extension if not exists "uuid-ossp";
CREATE TABLE car(
  car_uid UUID PRIMARY KEY,
  branch_name VARCHAR(40),
  model_name VARCHAR(10),
  price decimal(19,2) not null check (price > 0)
);

CREATE TABLE employee (
  emp_uid UUID PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  salary INT,
  -- car_id int,
  -- foreign key(car_id) REFERENCES car(id) on DELETE set null,
  car_uid UUID REFERENCES car(car_uid) on DELETE set null,
  unique(car_uid)
  
);

INSERT INTO employee(emp_uid,first_name, last_name,salary, car_uid) VALUES(uuid_generate_v4(),'Jan', 'Levinson', 40000, null);
INSERT INTO employee(emp_uid,first_name, last_name,salary) VALUES(uuid_generate_v4(),'san', 'Levinson', 50000);
INSERT INTO employee(emp_uid,first_name, last_name,salary) VALUES(uuid_generate_v4(),'dav', 'Levinson', 220000);
INSERT INTO car(car_uid,branch_name, model_name,price) VALUES(uuid_generate_v4(),'maruti','x00021',55555.32);
INSERT INTO car(car_uid,branch_name, model_name, price) VALUES(uuid_generate_v4(),'tesla','xACE09TY',66666.909);
INSERT INTO car(car_uid,branch_name, model_name, price) VALUES(uuid_generate_v4(),'mercedes','x0x5oF9',909090);

---------------------------------------------------------------------------------
-- \d car
-- \d employee
-- \d

---------------------------------------------------------------------------------
--      Unisversal Unique Identifiers(UUIDs)

-- select uuid_generate_v1();
-- select uuid_generate_v4();

select * from employee;
select * from car;
--        Do this in the terminal to get effect because of the protocol used by uuid-ossp
-- update employee set car_uid='1a97e09e-f3d6-48a3-b52f-2ef1e9848331' where emp_uid='d07e257f-b854-4e56-952e-0dec362a6336';
-- update employee set car_uid='aa6c3524-e520-4d11-8ce1-2b5f810a5311' where emp_uid='55bb59d8-1962-4826-81f4-e68390f5b71d';
select * from employee
join car on employee.car_uid=car.car_uid; -- beacuse the foreign key and primary key[car table ] is named same so..
-- we can use below code instead
select * from employee
-- left join on USING (car_uid);
-- full outer join on USING (car_uid);
join on USING (car_uid);












