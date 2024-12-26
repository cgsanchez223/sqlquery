--  More SQL (Including aggregates)

-- https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql
-- 1. SQL Basics: Simple WHERE and ORDER BY
-- For this challenge you need to create a simple SELECT statement that will return all columns from the people table WHERE their age is over 50. You should return all people fields where their age is over 50 and order by the age descending. 
SELECT * FROM people
 WHERE age > 50 ORDER BY age desc


-- https://www.codewars.com/kata/sql-basics-simple-sum
-- 2. SQL Basics: Simple SUM
-- For this challenge you need to create a simple SUM statement that will sum all the ages.
SELECT SUM(age) as age_sum FROM people;


-- https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql
-- 3. SQL Basics: Simple MIN / MAX 
-- For this challenge you need to create a simple MIN / MAX statement that will return the Minimum and Maximum ages out of all the people.
SELECT MIN(age) as age_min, MAX(age) as age_max FROM people


-- https://www.codewars.com/kata/1-find-all-active-students/train/sql
-- 4. Find all active students 
-- Create a simple SELECT query to display student information of all ACTIVE students.
SELECT * FROM students
 WHERE IsActive = 1


-- https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql
-- 5. SQL Basics: Simple GROUP BY
-- For this challenge you need to create a simple GROUP BY statement, you want to group all the people by their age and count the people who have the same age.
SELECT age, count(*) as people_count FROM people GROUP BY age 


-- https://www.codewars.com/kata/sql-basics-simple-having/train/sql
-- 6. SQL Basics: Simple HAVING
-- For this challenge you need to create a simple HAVING statement, you want to count how many people have the same age and return the groups with 10 or more people who have that age.
SELECT age, count(*) as total_people FROM people GROUP BY age HAVING COUNT(*) >=10;



-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Tutorial 5 SUM_and_COUNT on SQL Zoo

-- 1. Show the total population of the world.
SELECT SUM(population)
FROM world


-- 2. List all the continents - just once each.
SELECT DISTINCT continent FROM world


-- 3. Give the total GDP of Africa
SELECT SUM(gdp)
 FROM world
 WHERE continent = 'Africa'


-- 4. How many countries have an area of at least 1000000
SELECT COUNT(name)
 FROM world
 WHERE area >= 1000000


-- 5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT SUM(population)
 FROM world
 WHERE name IN ('Estonia', 'Latvia', 'Lithuania')


-- 6. For each continent show the continent and number of countries.
SELECT continent, COUNT(name)
FROM world
GROUP BY continent


-- 7. For each continent show the continent and number of countries with populations of at least 10 million.
SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent


-- 8. List the continents that have a total population of at least 100 million.
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000
