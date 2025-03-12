MODEL (
  name sqlmesh.order_profit,
  kind FULL
);

select o.orderid,
       o.orderdate,
       o.customerid,
       o.productid,
       o.shipdate,
       o.shipmode,
       o.ordercostprice, 
       o.ordersellingprice,
       o.ordersellingprice - o.ordercostprice as orderprofit,
       c.customername,
       c.segment,
       c.country,
       p.category,
       p.productname,
       p.subcategory
from sqlmesh.order_stage as o
join sqlmesh.customer_stage as c using(customerid)
join sqlmesh.product_stage as p using(productid);