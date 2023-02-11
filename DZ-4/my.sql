CREATE TABLE `students` (
  `id` int(10) NOT NULL COMMENT 'id пользователя',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя',
  `age` date NOT NULL COMMENT 'Дата рождения',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Город'
) COMMENT='Информация об одногруппниках';

INSERT INTO `students` (`id`, `name`, `age`, `address`) VALUES
(1, 'Иван', '2023-02-10', 'Москва'),
(2, 'Василиса', '2014-06-19', 'Дома'),
(3, 'Иванка', '2000-01-19', 'В домике'),
(4, 'Никитос', '2004-06-11', 'Москва'),
(5, 'Женька', '1983-03-21', 'Москва'),
(6, 'Рыжий', '1998-08-16', 'Москв'),
(7, 'Колобок', '2000-01-15', 'на чердаке'),
(8, 'Эдик', '2004-06-01', 'Москва'),
(9, 'Пельмень', '2005-02-11', 'нИ_тАМА');
/*(9, 'Пельмень', '2005-02-13', 'нИ_тАМА');*/

/*SELECT * FROM students WHERE 
address = 'Москва' AND
age >= '1993-01-01' AND
age < '2004-12-31';*/

UPDATE students SET age = '2005-02-12' WHERE name = 'Пельмень';

SELECT * FROM students WHERE
age <= DATE_SUB(NOW(), INTERVAL 18 YEAR) AND
age > DATE_SUB(NOW(), INTERVAL 30-1 YEAR)
ORDER BY age;