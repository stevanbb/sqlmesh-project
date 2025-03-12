MODEL (
  name sqlmesh.order_stage,
  kind FULL
);

select orderid,
       orderdate,
       shipdate,
       shipmode,
       customerid,
       productid,
       ordercostprice, 
       ordersellingprice     
from  DB_ADI_SQLMESH_DEV.SQLMESH.orders_t;