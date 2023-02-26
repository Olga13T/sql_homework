-- Создание БД
CREATE DATABASE homework1; 

-- Подключение к БД
USE homework1;

-- Создание таблицы с мобильными телефонами, используя графический интерфейс. 

CREATE TABLE mobile_list 
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(30),
    ProductCount VARCHAR(30),
    Price VARCHAR(30)
);

-- Заполнение БД данными
INSERT mobile_list(id, ProductName, Manufacturer, ProductCount, Price)
VALUES
	(1, "iPone X", "Apple", "3", "76000"), 		
	(2, "iPone 8", "Apple", "2", "51000"), 		
    (3, "Galaxy S9", "Samsung", "2", "56000"), 		
    (4, "Galaxy S8", "Samsung", "1", "41000"), 	
    (5, "P20 Pro", "Huawai", "5", "36000"); 		




-- Выведите название, производителя и цену для товаров, количество которых превышает 2


SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductCount > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_list
WHERE Manufacturer = "Samsung";

SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductCount > 2;

SELECT ProductName, Manufacturer
FROM mobile_list
WHERE ProductCount*Price > 100000 AND ProductCount*Price<145000;

-- 4.1 Товары в которых упоминание "iphone"
SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductName LIKE "iPone%";

-- 4.2. Galaxy
SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductName LIKE "Galaxy%";

-- 4.3. есть цифры
SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductName RLIKE "[0-9]";
-- 4.4. цифра 8
SELECT ProductName, Manufacturer,Price
FROM mobile_list
WHERE ProductName LIKE "%8";