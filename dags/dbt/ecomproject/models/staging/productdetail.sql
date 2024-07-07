select 
    id as product_id,
    productname as product_name
from {{source('ecom_project_sources','products')}} 
