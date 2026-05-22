use retail;


select * from departments;
select * from employees; 

select employee_name,
	   salary, 
       department_id,
       rn 
from 
(select employee_name,
		salary, 
        department_id,
        row_number() over(partition by department_id order by salary) as rn 
from employees) tbl

where rn = 1;


