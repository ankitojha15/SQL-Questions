# problem 

Do you know if the number of seniors working at Meta Facebook is higher than its number of USA based employees?

-- difficulty : Hard
-- uses : switch case
  
# solution

select
    case
        when count(case when is_senior = 1 then 1 end) >
             count(case when location = "USA" then 1 end)
        then "More seniors"
        else "More USA-based"
    end  as winner
from facebook_employees;
