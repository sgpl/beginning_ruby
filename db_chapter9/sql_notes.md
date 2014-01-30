- sql = structured query language. 
- used to interact with database systems
- can be used to create, retrieve, update and delete data. and create/manipulate structures that hold data. 

- CREATE TABLE

need to create table to be able to add/hold data. 

CREATE TABLE table_name (
col_name data_type options,
col_name data_type options,
col_name data_type options 
);

- INSERT INTO 

INSERT commands to add rows to table

INSERT INTO people (name, age, gender, job) VALUES ("Some Name", 23, "Male", "Technical Engineer")

^ we can omit this bit: (name, age, gender, job) if we enter the stuff in the right order. 


- SELECT

used to retrieve data from tables. * = ALL THE DATA

SELECT * FROM people;
SELECT name FROM people;
SELECT * FROM people WHERE id = 2;
SELECT * FROM people WHERE name = "Some Name";
SELECT * FROM people WHERE age >= 20 AND age <= 40;


- can also have results returned in a certain order by appending ORDER BY clauses. so: 

- SELECT * FROM people ORDER BY name DESC;
- SELECT * FROM people WHERE age >= 20 AND age <= 40 ORDER BY age ASC;

- DELETE

DELETE command deletes rows from tables. can delete rows based upon an SQL condition. 

DELETE FROM people WHERE name="Chris";
DELETE FROM people WHERE age > 100;
DELETE FROM people WHERE gender = "Male" AND age < 50;

- UPDATE
- provides ability to update/amend information within the database. 

SELECT * FROM people WHERE name = "Chris";
UPDATE people SET name = "Christopher" WHERE name = "Chris";
UPDATE people SET name = "Christopher", age = 44 WHERE name = "Chris";
UPDATE people SET name = "Christopher" WHERE name = "Chris" AND age = 25;
UPDATE people SET name = "Christopher";

