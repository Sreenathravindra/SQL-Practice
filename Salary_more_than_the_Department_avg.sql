use retail;

select e.employee_id, e.department_id,e.salary from employees e
join (select department_id, avg(salary) as salary from employees group by department_id) t
on t.department_id = e.department_id
where e.salary > t.salary
order by e.department_id,e.salary;




select max(salary) from employees where department_id = 1