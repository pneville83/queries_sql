CREATE TABLE products (
  id serial PRIMARY KEY,
  brand varchar (100) NOT NULL,
  model varchar (100) NOT NULL, 
  price decimal NOT NULL,
  stock NUMERIC (4) NOT NULL,
  created_on timestamp 
);

INSERT INTO products (brand, model, price, stock, created_on) VALUES 
('Samsung', 'S10', 350.99, 10, now()), 
('Samsung', 'S20+', 495.99, 15, now()), 
('Xiaomi', 'Note 9 Pro', 299.95, 20, now()),
('Xiaomi', 'Note 8', 250.55, 15, now()), 
('I Phone', 'XI Pro', 1250.95, 5, now());

SELECT count (id) FROM products; 
SELECT max (price) FROM products;
SELECT min (price) FROM products;
SELECT avg (price) FROM products;
SELECT sum (stock) FROM products;
SELECT sum (stock) FROM products WHERE brand = 'Xiaomi';
SELECT avg (price) FROM products WHERE brand = 'Samsung';
SELECT brand, sum (stock) FROM products GROUP BY brand;
SELECT brand, avg (price) FROM products GROUP BY brand;
SELECT brand, min (price) FROM products GROUP BY brand;
SELECT (model,price) FROM products ORDER BY brand DESC;
SELECT price AS model FROM products GROUP BY price;


SELECT * FROM products;
SELECT price FROM products WHERE brand = 'Xiaomi' 