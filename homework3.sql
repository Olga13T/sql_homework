CREATE DATABASE if not EXISTS homework3;

USE homework3;
#'sql', "sql"
#`ё на англ раскладке - выделяются названия таблицб столбцов и БД
DROP TABLE if exists staff;

CREATE TABLE IF NOT EXISTS `staff`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`firstname` VARCHAR(45),
`lastname` VARCHAR(45),
`post` VARCHAR(45),
`seniority` INT,
`salary` INT,
`age` INT
);
-- Alter table staff
-- modify post varchar(30);
INSERT INTO `staff` (`firstname`, `lastname`, `post`,`seniority`,`salary`, `age`)
VALUES
('Вася', 'Васькин', 'Начальник', 40, 100000, 60), -- id = 1
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT *
FROM staff;

-- 1.Отсортировать данные по полю заработная плата(salary) в прорядке: убывания\возрастания
SELECT *
FROM staff
ORDER BY salary;

SELECT *
FROM staff
ORDER BY salary DESC;

-- 2. Вывести 5 максимальных заработных плат + ТОП-2

SELECT *
FROM staff 
ORDER BY salary DESC
LIMIT 5;

-- топ-2 по "Рабочий"
SELECT *
FROM staff
WHERE post = "Рабочий"
ORDER BY salary DESC
LIMIT 2;

-- 3. Посчитать суммарную зарплату(salary) по каждой специальности(post)
SELECT post,
SUM(salary) AS "Суммарная зарплата по специальности"
FROM staff
GROUP BY post;

-- 4. Найти кол-во сотрудников со специальность (post) "Рабочий" в возрасте от 24 до 49 сключительно
SELECT COUNT(post) 
FROM staff;

-- 5. Найти кол-во специальностей
SELECT COUNT(DISTINCT post) 
FROM staff;

-- 6. Вывести спец-ти, у которых средний возраст сотрудников меньше 30 лет

SELECT post, AVG(age)
FROM staff
GROUP BY post
HAVING AVG(age) <= 30;