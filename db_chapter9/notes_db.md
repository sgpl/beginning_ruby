## relational db and SQL

- text files are not reliable if many processes are using them at the same time. and they are slow. 

- CSV. loading a CSV file is fine when the dataset is small, but when it grows, the process of interaction with the file becomes sluggish. 



## relational database concepts

- dedicated db systems have support for relational databases. 
- relational database:>> is a db that is composed of data grouped into one or more tables that can be linked together. 

eg: 
ID		NAME 		JOB 	AGE 	GENDER 


## connecting to other db systems

- library called DBI provides database-agnostic interface between ruby and database systems


### MySQL

- most common db system available from web hosting providers. 
- open source variety, free to DL and use. 
- reputation for being simple to use
- to install "gem install mysql"
- for example: refer to mysql_db.rb 


### PostgreSQL

- free relational database server available under open source license
- faster and more stable than MySQL and offers more features. 
- follows SQL standards more correctly vs MySQL
- to install "gem install postgres"
- refer to pg. 241 as there might be some setup necessary to specify where PostgreSQL is installed. 


### Oracle RDBMS 

- used in most enterprises
- doesn't offer open source version that can be used for free in production
- see pg. 241 for more info. 

### Microsoft SQL Server

- refer to pg. 242

## notes on DBI: A Generic DB Connectivity Library

- offers some simplicty and cross-database operatibility. 
- considered somewhat obselete, however it is good to know. 
- available as a ruby gem called 'dbi'
- refer to dbi_db.rb


## AcriveRecord: brief summary 

- product of RoR framework
- abstracts away all the details of SQL and database design and makes it possible to relate items within database in an OO fashion, like with PStore