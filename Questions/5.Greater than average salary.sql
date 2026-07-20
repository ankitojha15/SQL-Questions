-- Greater than average salary

-- Difficulty : Medium
-- Uses : Subquery

-- Problem : 
  -- You are given 3 tables namely ‘Students’ , ‘Departments’ and ‘Jobs’. 
  -- Write an SQL query to find students with average salary greater than overall average of the CSE Department.

-- Solution

select 
    name 
from Students s
join Jobs j 
on s.student_id = j.student_id
group by s.student_id
having avg(j.salary) > 
    (
        select 
            avg(salary)
        from Jobs j
        join Students s
        on j.student_id = s.student_id
        join Departments d 
        on d.department_id = s.department_id
        where dept_name = "CSE"
    )
order by name asc;
