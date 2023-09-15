--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);


insert into employees(employee_name)
values ('Илья'),
			('Мария'),
			('Анастасия'),
			('Алёна'),
			('Ева'),
			('Максим'),
			('Андрей'),
			('Анна'),
			('Алиса'),
			('Полина'),
			('Денис'),
			('Даниил'),
			('Алексей'),
			('Марина'),
			('Елизавета'),
			('Вера'),
			('Арсений'),
			('Кирилл'),
			('Софья'),
			('Александр'),
			('Алина'),
			('Вероника'),
			('Даниэла'),
			('Зоя'),
			('Глеб'),
			('Дарья'),
			('Павел'),
			('Александра'),
			('Ника'),
			('Сафия'),
			('Антон'),
			('Матвей'),
			('Лев'),
			('София'),
			('Аврора'),
			('Тимур'),
			('Милана'),
			('Валерия'),
			('Владимир'),
			('Роман'),
			('Василиса'),
			('Даниэль'),
			('Филипп'),
			('Фёдор'),
			('Амира'),
			('Мирослава'),
			('Станислав'),
			('Егор'),
			('Артём'),
			('Кира'),
			('Иван'),
			('Арина'),
			('Виктория'),
			('Владислав'),
			('Михаил'),
			('Эмир'),
			('Леон'),
			('Семён'),
			('Варвара'),
			('Николай'),
			('Вячеслав'),
			('Ярослав'),
			('Марк'),
			('Сергей'),
			('Тимофей'),
			('Елисей'),
			('Оливия'),
			('Стефания'),
			('Ульяна'),
			('Диана');

select * from employees;
DELETE FROM employees WHERE id > 70;
--71-420

--Таблица salary
--
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

create table salary_2(
	id serial primary key,
	monthly_salary int not null
);

insert into salary_2(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);


select * from salary_2;


--Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

TRUNCATE TABLE employee_salary RESTART identity;
--drop table employee_salary;

insert into employee_salary(employee_id, salary_id)
values  (1,12),
		(2,18),
		(3,14),
		(4,16),
		(5,8),
		(6,10),
		(7,22),
		(8,1),
		(9,6),
		(10,17),
		(11,7),
		(12,3),
		(13,11),
		(14,4),
		(15,2),
		(16,11),
		(17,35),
		(18,3),
		(19,5),
		(20,14),
		(21,6),
		(22,13),
		(23,15),
		(24,4),
		(25,68),
		(26,3),
		(27,10),
		(28,8),
		(29,7),
		(30,8),
		(99,14),
		(125,8),
		(658,16),
		(88,1),
		(278,16),
		(265,5),
		(333,3),
		(654,12),
		(123,9),
		(987,11);
	
select * from employee_salary es;

--Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles_2(
	id serial primary key,
	role_name int unique not null
);

alter table roles_2
alter column role_name type varchar(30);

insert into roles_2(role_name)
values  ('QA_Manual_junior'),
		('QA_Manual_middle'),
		('QA_Manual_senior'),
		('QA_Auto_junior'),
		('QA_Auto_middle'),
		('QA_Auto_senior'),
		('Java_developer_junior'),
		('Java_developer_middle'),
		('Java_developer_senior'),
		('Python_developer_junior'),
		('Python_developer_middle'),
		('Python_developer_senior'),
		('HR'),
		('Manager'),
		('Product Manager'),
		('Designer'),
		('SEO'),
		('Scrum mater'),
		('Product owner'),
		('Chief');


select * from roles_2;

--Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_2(id)
);


insert into roles_employee(employee_id, role_id)
values  (1,12),
		(2,8),
		(3,3),
		(4,6),
		(5,20),
		(6,16),
		(7,17),
		(8,18),
		(9,14),
		(10,19),
		(11,1),
		(12,9),
		(13,8),
		(14,4),
		(15,11),
		(16,17),
		(17,6),
		(18,16),
		(19,19),
		(20,7),
		(21,12),
		(22,8),
		(23,3),
		(24,6),
		(25,20),
		(26,16),
		(27,17),
		(28,18),
		(29,14),
		(30,19),
		(31,1),
		(32,9),
		(33,8),
		(34,4),
		(35,11),
		(36,17),
		(37,6),
		(38,16),
		(39,19),
		(40,7);

select * from roles_employee;




