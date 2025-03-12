MODEL (
  name sqlmesh.customer_stage,
  kind FULL
);

select customerid,
       customername,
       segment,
       country
from  DB_ADI_SQLMESH_DEV.SQLMESH.customers_t;