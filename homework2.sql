create database if not exists homework2;
use homework2;
CREATE TABLE sales
(
id int PRIMARY key AUTO_INCREMENT,
order_date VARCHAR(10) not null,
count_product VARCHAR(10) not null
);
 
 insert sales (order_date, count_product)
 VALUES 
	("2022-01-01", "156"),
    ("2022-01-02","180"),
    ("2022-01-03","21"),
    ("2022-01-04","124"),
    ("2022-01-05","341")



SELECT
	id AS "id",
	order_date AS "Дата",
	IF (count_product < 100, "Маленький заказ",
		IF (count_product between 100 AND 300, "Средний заказ",
			IF (count_product > 300, "Большой заказ", "Не найдено")))
	AS "Тип заказа"
FROM sales;


SELECT count_product AS "количество", 
CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product >= 100 AND count_product <= 300 THEN "Средний заказ"
    ELSE "Большой заказ"
    END AS "Тип заказа"
FROM sales;


create table orders
(
id int primary key auto_increment, 
employee_id varchar(15) not null,
amount int,
order_status text
);
 insert orders (employee_id, amount, order_status)
 VALUES 
	("e03", "15.00", "OPEN"),
    ("e01", "25.50", "OPEN"),
    ("e05", "100.70", "CLOSED"),
    ("e02", "22.18", "OPEN"),
    ("e04", "9.50", "CANCELLED")

SELECT
	employee_id AS "iemployee_id",
	IF (order_status  = "OPEN", "Order is in state",
		IF (order_status = "CLOSED", "Order is in closed",
			IF (order_status = "CANCELLED", "Order is in cancelled", "Not found")))
	AS "Full_order_status"
FROM orders;

SELECT employee_id AS "Id",
CASE
	WHEN order_status = "OPEN" THEN "Order is in state"
    WHEN order_status = "CLOSED" THEN "Order is in closed"
    ELSE "Order is in cancelled"
    END AS Full_order_status
FROM orders;




ALTER TABLE sales ADD FOREIGN KEY (id) REFERENCES orders(id);

SELECT *  FROM sales;


ALTER TABLE company_orders

