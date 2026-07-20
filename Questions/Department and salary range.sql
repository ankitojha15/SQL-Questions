-- Department and salary range
-- Difficulty : medium
-- uses: Joins,case,aggreation functions,group by

-- Problem : 
-- Write a SQL query to find the names of departments along with the average salary, total number of employees, highest salary, 
-- lowest salary, and the percentage of employees earning more than $70,000 in each department.
-- Also, calculate the salary range (difference between the highest and lowest salary) for each department. Only include departments 
-- where the average salary is above $50,000, there are at least five employees, and the salary range exceeds $30,000

-- Solution

select 
    d.DepartmentName,
    avg(Salary) AverageSalary,
    count(EmployeeID) TotalEmployees,
    max(Salary) HighestSalary,
    min(Salary) LowestSalary,
    round(sum(case when Salary > 70000 then 1 else 0 end) * 100.0 / 
    count(*),2) as PercentageOver70K,
    max(Salary) - min(Salary) as SalaryRange
from departments d
join employees e 
on d.DepartmentID = e.DepartmentID
group by d.DepartmentID 
having max(Salary) - min(Salary) > 30000
order by DepartmentName asc;
