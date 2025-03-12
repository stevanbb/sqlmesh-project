MODEL (
  name sqlmesh.product_stage,
  kind FULL
);

select category,
       productid,
       productname,
       subcategory
from  DB_ADI_SQLMESH_DEV.SQLMESH.products_t;
