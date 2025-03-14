MODEL (
  name sqlmesh.customer_stage,
  kind FULL
);

select customerid,
       customername,
       segment
from  DB_ADI_SQLMESH_DEV.SQLMESH.customers_t;