-- SQL constraints are used to specify rules for the data in a table.
-- Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. 
-- If there is any violation between the constraint and the data action, the action is aborted.


		-- Constraints used in mysql
    -- NOT NULL - Ensures that a column cannot have a NULL value
    -- UNIQUE - Ensures that all values in a column are different
    -- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
    -- FOREIGN KEY - Prevents actions that would destroy links between tables
    -- CHECK - Ensures that the values in a column satisfies a specific condition
    -- DEFAULT - Sets a default value for a column if no value is specified
    -- CREATE INDEX - Used to create and retrieve data from the database very quickly
    -- AUTO_INCREMENT 


CREATE TABLE students (
	students_id int AUTO_INCREMENT,
	name VARCHAR(10) DEFAULT 'HUMAN',
	major VARCHAR(10) UNIQUE NOT NULL, -- this col cannot contain duplicate values, this col cannot be empty
	PRIMARY KEY(students_id) ----->primary key is not null and unique (by default)
);

insert into students values(1,'kshitiz' ,'Chem'); -- values should be in order inwhich these were declared
insert into students(students_id, name) values(2,'nkcm'); -- we may not know the major of nkcm in that case
insert into students values(3,'kunal', 'CS');
insert into students(students_id, major, name) values(33,'CS1','null');
alter table students
modify name varchar(10) not null;

select * from students;