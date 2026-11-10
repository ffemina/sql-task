use company_db;
-- aggregate functions

-- count 
select count(*) as 'total rows' from employees;
select count(distinct job_title) from employees;
select count(distinct commission)as commission from employees;
select count(employee_id )as 'total employee' from employees;
select count(distinct department_id)from departments;
select*from departments;
select count(department_id)from employees;
select count(distinct manager_id)as 'managers'from employees;
select min(hire_date)as 'first date' , max(hire_date)'last date' from employees;
select sum(salary)as 'total salary',
avg(salary)as 'average salary',
max(salary)as 'maximum salary',
min(salary)as 'minimum salary'from employees;

select round(avg(commission),0)as 'average commison' from employees;

-- where  

select count(*) from employees where city='kochi'  ;
select count(employee_id)as 'employee' from employees where manager_id=4;
select count(employee_id)as 'employee'from employees where salary>=100000;
select count(employee_id)as employees from employees where department_id in(20,30);
select avg(salary)from employees where department_id=30;
select avg(salary)as 'data analyst',min(salary)as 'minimum',max(salary)'maximum'from employees where job_title='data analyst';
select count(*)as 'count'from employees where commission is null;
SELECT ROUND(AVG(SALARY),0)AS 'AVERAGE 2020' FROM employees WHERE HIRE_DATE>='2020-01-01';
SELECT COUNT(EMPLOYEE_ID)AS 'COUNT',AVG(SALARY)AS 'AVERAGE',SUM(SALARY)AS 'SUM',MAX(SALARY)AS 'MAX',MIN(SALARY)AS 'MIN' FROM EMPLOYEES WHERE CITY NOT IN('MUMBAI','DELHI');




