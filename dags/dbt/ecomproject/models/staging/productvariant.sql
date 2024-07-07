select 
  id as productvariant_id,
  productname_id as productname_id,
  productpurchaseprice as productpurchase_price,
  productsellingprice as productselling_price,
  productdiscount as product_discount,
  productprice as products_price
from {{source('ecom_project_sources','productvariant')}}