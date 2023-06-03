	ЗАДАНИЕ
Сформулируйте SQL запрос для создания таблицы book, занесите  его в окно кода (расположено ниже)  и отправьте на проверку (кнопка Отправить). Структура таблицы book:
Поле 	Тип, описание
book_id 	INT PRIMARY KEY AUTO_INCREMENT
title 	VARCHAR(50)
author 	VARCHAR(30)
price 	DECIMAL(8, 2)
amount 	INT

CREATE TABLE book(
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  author VARCHAR(30),
  price DECIMAL(8,2),
  amount INT);


	ЗАДАНИЕ
Занесите новую строку в таблицу book (текстовые значения (тип VARCHAR) заключать либо в двойные, либо в одинарные кавычки):
book_id 	title 	author 	price 	amount
INT PRIMARY KEY AUTO_INCREMENT 	VARCHAR(50) 	VARCHAR(30) 	DECIMAL(8,2) 	INT
1 	Мастер и Маргарита 	Булгаков М.А. 	670.99 	3

INSERT INTO book (title, author, price, amount)
VALUES ('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3);


	ЗАДАНИЕ
Занесите три последние записи в таблицуbook,  первая запись уже добавлена на предыдущем шаге:
book_id 	title 	author 	price 	amount
INT PRIMARY KEY AUTO_INCREMENT 	VARCHAR(50) 	VARCHAR(30) 	DECIMAL(8,2) 	INT
1 	Мастер и Маргарита 	Булгаков М.А. 	670.99 	3
2 	Белая гвардия 	Булгаков М.А. 	540.50 	5
3 	Идиот 	Достоевский Ф.М. 	460.00 	10
4 	Братья Карамазовы 	Достоевский Ф.М. 	799.01 	2

INSERT INTO book (title, author, price, amount)
VALUES ('Белая гвардия', 'Булгаков М.А.', 540.50, 5);
INSERT INTO book (title, author, price, amount)
VALUES ('Идиот', 'Достоевский Ф.М.', 460.00, 10);
INSERT INTO book (title, author, price, amount)
VALUES ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 2);
SELECT * FROM book;


	ЗАДАНИЕ
Вывести информацию о всех книгах, хранящихся на складе.

SELECT * FROM book

	ЗАДАНИЕ
Выбрать авторов, название книг и их цену из таблицы book

SELECT author, title, price  FROM book ;


	ЗАДАНИЕ
В конце года цену всех книг на складе пересчитывают – снижают ее на 30%. Написать SQL запрос, который из таблицы book выбирает названия, авторов, количества и вычисляет новые цены книг. Столбец с новой ценой назвать new_price, цену округлить до 2-х знаков после запятой.

SELECT title, author, amount, ROUND((price*0.7), 2) AS new_price
FROM book;


	ЗАДАНИЕ
При анализе продаж книг выяснилось, что наибольшей популярностью пользуются книги Михаила Булгакова, на втором месте книги Сергея Есенина. Исходя из этого решили поднять цену книг Булгакова на 10%, а цену книг Есенина - на 5%. Написать запрос, куда включить автора, название книги и новую цену, последний столбец назвать new_price. Значение округлить до двух знаков после запятой.

SELECT author, title, 
ROUND(IF(author='Булгаков М.А.', price+price*0.1, IF(author='Есенин С.А.', price+price*0.05, price)), 2) AS new_price
from book;


	ЗАДАНИЕ
Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600, а стоимость всех экземпляров этих книг больше или равна 5000.

SELECT title, author, price , amount
FROM book
WHERE (price < 500 OR price > 600) AND price*amount >= 5000;


	ЗАДАНИЕ
Посчитать, количество различных книг и количество экземпляров книг каждого автора , хранящихся на складе.  Столбцы назвать Автор, Различных_книг и Количество_экземпляров соответственно.

SELECT author as Автор, COUNT(title) as Различных_книг, sum(amount) as Количество_экземпляров
FROM book 
GROUP BY author


	ЗАДАНИЕ
Вывести  цену самой дешевой книги, цену самой дорогой и среднюю цену уникальных книг на складе. Названия столбцов Минимальная_цена, Максимальная_цена, Средняя_цена соответственно. Среднюю цену округлить до двух знаков после запятой.

SELECT DISTINCT MIN(price) AS Минимальная_цена, MAX(price) as Максимальная_цена, 
ROUND(AVG(price),2) AS Средняя_цена 
FROM book;





