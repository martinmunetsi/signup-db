## Install postgresql database
Download postgresql v15 database and install 
 
## Database Setup for the Sign Up application

Connection to the database:
The PostgreSQL database server can be connected through the below tools:

    PgAdmin
    SQL Shell (PSQL)

Create the Database:

    psql> create database users_db;

Create the Tables:

    Run script create_tables.sql in users_db

## Connection Info

JDBC URL: 'jdbc:postgresql://localhost:5432/users_db'

Username: 'postgres'

Password: 'postgres7'

## The Entity–relationship model
The user database "users_db" is comprised of 3 tables namely users,pswd and pswd_hist.
The users table contains the sign up user id,name and contact details. The user_id is the primary key field on the users table.
Child tables such as pswd and pswd_hist reference the users table through a foreign key on user_id. 
The pswd table will store a Hash of the user password and will keep state of whether the password is locked. The user_id also has a UNIQUE constraint on the pswd table.
The pswd_hist table keeps the history of the passwords hashes.
