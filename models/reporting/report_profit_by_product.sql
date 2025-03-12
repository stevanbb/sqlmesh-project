MODEL (
  name sqlmesh.product_profit,
  kind FULL
);

select productid,
       productname,
       category,
       subcategory,
       sum(orderprofit) as profit
from sqlmesh.order_profit
group by productid,
         productname,
         category,
         subcategory;