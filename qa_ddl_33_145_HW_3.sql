SQL HomeWork 2. Joins

Подключится к 
Host: 159.69.151.133
Port: 5056
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select e.employee_name en, s.monthly_salary ms
 from employees e
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 
 --2. Вывести всех работников у которых ЗП меньше 2000.
 select e.employee_name en, s.monthly_salary ms
 from employees e
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where s.monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select e.employee_name, s.monthly_salary
 from employees e
 right join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where e.employee_name is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select e.employee_name, s.monthly_salary
 from employees e
 right join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where e.employee_name is null and s.monthly_salary < 2000;

 --5. Найти всех работников кому не начислена ЗП.
 select e.id, e.employee_name, s.monthly_salary
 from employees e
 join employee_salary es on es.employee_id = e.id
 left join salary_2 s on es.salary_id = s.id
 where s.monthly_salary is null; 

 --6. Вывести всех работников с названиями их должности.
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id;

 --7. Вывести имена и должность только Java разработчиков.
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%Java%';

 --8. Вывести имена и должность только Python разработчиков.
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%Python%';

 --9. Вывести имена и должность всех QA инженеров.
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%QA%';

 --10. Вывести имена и должность ручных QA инженеров.
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%anual%';

 --11. Вывести имена и должность автоматизаторов QA
 select e.employee_name, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%uto%';

 --12. Вывести имена и зарплаты Junior специалистов
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%unior%';

 --13. Вывести имена и зарплаты Middle специалистов
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%iddle%';

 --14. Вывести имена и зарплаты Senior специалистов
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%enior%';

 --15. Вывести зарплаты Java разработчиков
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%ava__ev%';

 --16. Вывести зарплаты Python разработчиков
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%ython__ev%';

 --17. Вывести имена и зарплаты Junior Python разработчиков
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%ython_developer_junior%';

 --18. Вывести имена и зарплаты Middle Java разработчиков
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%Java_developer_middle%'
 
 --19. Вывести имена и зарплаты Senior Java разработчиков
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%Java_developer_senior%'
 
 --20. Вывести зарплаты Junior QA инженеров
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%QA_%junior%'
 
 --21. Вывести среднюю зарплату всех Junior специалистов
 select avg(s.monthly_salary)
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%unior%';

 --22. Вывести сумму зарплат Java разработчиков
 select sum(s.monthly_salary)
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%Java%';

 --23. Вывести минимальную ЗП QA инженеров
 select min(s.monthly_salary)
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
 select max(s.monthly_salary)
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%QA%';

 --25. Вывести количество QA инженеров
 select role_name, employee_name, count(*)  
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 group by role_name, employee_name
 having role_name like '%QA%';

--Просто общее количество
select count(*)  
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 where role_name like '%QA%';


 --26. Вывести количество Middle специалистов.
 select role_name, employee_name, count(*)  
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 group by role_name, employee_name
 having role_name like '%middle%';

 --27. Вывести количество разработчиков
 select role_name, employee_name, count(*)  
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 group by role_name, employee_name
 having role_name like '%dev%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum(s.monthly_salary)
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where role_name like '%dev%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select e.employee_name, r.role_name, s.monthly_salary 
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 order by monthly_salary

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select e.employee_name, r.role_name, s.monthly_salary 
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where s.monthly_salary between 1700 and 2300
 order by monthly_salary
 
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select e.employee_name, r.role_name, s.monthly_salary 
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where s.monthly_salary < 2300
 order by monthly_salary
 
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
 from employees e
 join roles_employee re on re.employee_id = e.id
 join roles_2 r on re.role_id = r.id
 join employee_salary es on es.employee_id = e.id
 join salary_2 s on es.salary_id = s.id
 where s.monthly_salary in (1100, 1500, 2000)
 order by monthly_salary
 
