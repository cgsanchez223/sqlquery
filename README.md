Chapter 26 introduces SQL which deals with databases
- A Database in a Web Stack is found in the backend.
    - There are many hosting sites and programs to create databases such as PostgreSQL, MySQL, SQLite, MongoDB, Cassandra, Render etc.
- Visualization of a Database
    - Schema - Visually and logically thinking about your database and how different tables and categories connect to each other.
    - SQL (Structured Query Language) - Human readable language for querying
    - table - Similar to a spreadsheet with columns and rows.
    - column - Can have an attribute such as company, first_name, illness etc.
    - row - Shows data that correlates to the column. ex: first_name in column would correlate to Mike in row
___________________________________________________
PostgreSQL - Relational Database Management System
- Program we will be using to manage SQL databases
- PostgreSQL can be downloaded:
    - https://www.postgresql.org/
- You can run postgreSQL in the Terminal
    - $ psql database_name
        - This will open your database in psql
    - $ createdb database_name
        - will create the database with the name database_name
    - $ psql < database_name.sql
        - .sql files are used to write the information for the database
        - This function will help seed the database, or update the database based on the text written in the .sql file.
    - $ dropdb database_name
        - will delete the current database_name
_______________________________________________________________________________________
- When in postgreSQL you can use the following commands in order to jump between files
    - \1 - Shows a list of all the databases created available under your username
    - \c DB_NAME - will connect you to another database (DB_NAME in this case)
    - \dt - will list all tables in the current database
    - \d TABLE_NAME - Get details about
    - \q - To quit out of psql (can also do CTRL D)
_______________________________________________________________________________________
- SQL example
    - SELECT * FROM people WHERE age > 21 AND id IS NOT NULL;
        - Selected any amount from the table "people" who have an age value over 21 and also their id is not set to null
        - SQL is case sensitive.
        - SELECT, FROM, WHERE - are usually written in all caps but it is not necessary
        - Commands have to end with the semicolon in order to work.

________________________________________________________________________________________
- SELECT - selects
 - FROM - select or join together tables
    - SELECT * FROM books;
 - WHERE - which row to use
    - SELECT * FROM books WHERE price > 10;
 - GROUP BY - Place rows into groups
    - SELECT author, COUNT(*) FROM books GROUP BY author;
 - SELECT - Determine values of result
    - SELECT author, COUNT(*) FROM books GROUP BY author;
 - HAVING - Determine which grouped results to keep
    - SELECT author, COUNT(*) FROM books GROUP BY author HAVING COUNT(*) > 2;
 - ORDER BY - Sort output data
    - SELECT title, author, price FROM books ORDER BY author;
 - LIMIT - limit output to n rows
    - SELECT title, author, price FROM books ORDER BY price LIMIT 5;
 - OFFSET - Skip n rows at start of output
    - SELECT title, author, price FROM books ORDER BY price OFFSET 1;

________________________________________________________________________________________
- SQL Operators (IN, NOT IN, BETWEEN, AND, OR, WHERE)
    - SELECT title FROM books WHERE autho = 'J. K. Rowling';
- SQL Aggregates (COUNT, AVG, SUM, MIN, MAX)
    - SELECT COUNT(*) FROM books;
    - SELECT MAX(page_count) FROM books;
    - SELECT MIN(price) FROM books;

________________________________________________________________________________________
- Modifying Data:
    - INSERT INTO books (title, author) VALUES ('The Iliad', 'Homer');
- Updating Data:
    - UPDATE books SET author = 'Matt';
- Deleting Data:
    - DELETE FROM nooks WHERE title = 'Emma';

________________________________________________________________________________________
- Actual Lesson:
    - Part 1 and 2 are in the .sql files. Both answer questions for simple SQL execrises
    - Part 3 is in the sql-querying folder
        - To seed use:
            - psql < seed_products.sql
    - Part 4 is the further study
        - psql < seed_playstore.sql