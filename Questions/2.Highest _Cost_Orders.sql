# Highest Cost Orders

## Probelem

- Identify the customer with the highest daily total order cost and retrieve relevant details.

-- Difficulty: Hard

## Solution

with order_cost as (
    select 
        first_name,
        sum(total_order_cost) `total_order_cost`,
        order_date
    from customers c
    join orders o 
        on c.id = o.cust_id
    where 
        order_date >= '2019-02-01' and order_date < '2019-05-01'
    group by first_name,order_date
)

select 
    * 
from order_cost
order by total_order_cost desc limit 1;
