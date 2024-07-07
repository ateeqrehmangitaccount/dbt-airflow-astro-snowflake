select 
    id as orderdetailid,
    orderquantity as productquantity,    
    orderproductweight as productweight,
    orderproductlinetotal as producttotalprice,
    orderproductshipping as productshipping,
    productname_id as product_id,
    ordermaster_id as ordermaster_fk_id,
    orderproductvariant_id as orderproductvariant_id 
from {{source('ecom_project_sources','orderdetail')}}

