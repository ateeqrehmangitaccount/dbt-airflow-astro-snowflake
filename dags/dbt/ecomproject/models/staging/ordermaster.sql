select 
    id as ordermaster_pk_id,
    ordernummber as ordernumber,
    ordertotal as order_total,
    ordershipping as order_shipping
from {{source('ecom_project_sources','ordermaster')}}
  