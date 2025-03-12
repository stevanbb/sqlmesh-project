MODEL (
  name sqlmesh.customer_profit,
  kind FULL
);

select customerid,
       segment,
       country,
       sum(orderprofit) as profit
from sqlmesh.order_profit
group by customerid,
         segment,
         country;
