-- Did $psql < seed_products.sql --
-- Connected to products_db --

-- 1 Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false. --

INSERT INTO products
  (name, price, can_be_returned)

VALUES
 ('chair', 44.00, 'f');


-- 2 Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true. --
INSERT INTO products
 (name, price, can_be_returned)

VALUES
 ('stool', 25.99, 't');


-- 3 Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false. --
INSERT INTO products
 (name, price, can_be_returned)

VALUES
 ('table', 124.00, 'f');


-- 4. Display all of the rows and columns in the table. -- 
-- In Terminal write --
SELECT * FROM products;


-- 5. Display all of the names of the products. --
-- In Terminal write --
SELECT name FROM products;


-- 6. Display all of the names and prices of the products. --
-- In Terminal write --
SELECT name, price FROM products;


-- 7. Add a new product - make up whatever you would like! --
INSERT INTO products
 (name, price, can_be_returned)

VALUES
 ('tablecloth', 30.00, 't');

-- 8. Display only the products that can_be_returned --
-- In Terminal write --
SELECT * FROM products WHERE can_be_returned;
-- 2 rows --


-- 9. Display only the products that have a price less than 44.00. --
-- In Terminal write --
SELECT * FROM products WHERE price < 44.00;
-- 2 rows --


-- 10. Display only the products that have a price in between 22.50 and 99.99. --
-- In Terminal write --
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;
-- 3 rows --


-- 11. There’s a sale going on: Everything is $20 off! Update the database accordingly. --
UPDATE products SET price = price - 20.00;
-- Update 4 --


-- 12. Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria. --
DELETE FROM products WHERE price < 25;
-- Delete 3 --

-- 13. And now the sale is over. For the remaining products, increase their price by $20 --
UPDATE products SET price = price + 20.00;
-- Update 1 --


-- 14. There is a new company policy: everything is returnable. Update the database accordingly. --
UPDATE products SET can_be_returned = 't';
-- Update 1 --