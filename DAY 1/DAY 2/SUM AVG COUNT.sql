/* creating a table customers */
CREATE TABLE customers(
    customer_id int(20),
    customer_name varchar(200),
    address varchar(100),
    city varchar(20),
    postal_code varchar(20),
    country varchar(20),
    sale int(20),
    PRIMARY KEY(customer_id)
);

INSERT INTO customers VALUES (1,'Alfreds Futterkiste','Obere Str. 57','Berlin','12209','Germany',1000000);
INSERT INTO customers VALUES (2,'Ana Trujillo Emparedados y helados','Avda. de la Constitución 2222','México D.F.','05021','Mexico',2000);
INSERT INTO customers VALUES (3	,'Antonio Moreno Taquería','Mataderos 2312','México D.F.','05023','Mexico',2001);
INSERT INTO customers VALUES (4,'Around the Horn','120 Hanover Sq.','London','WA1 1DP','UK',5000);
INSERT INTO customers VALUES (5,'Berglunds snabbköp','Berguvsvägen 8','Luleå','S-958 22','Sweden',3000);

SELECT SUM(sale)
FROM customers;

SELECT AVG(sale)
FROM customers;

SELECT COUNT(country) AS MEXICO_COUNT
FROM customers
WHERE country='Mexico';