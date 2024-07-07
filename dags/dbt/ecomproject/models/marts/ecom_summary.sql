select 
  count(distinct ordermaster_fk_id) as total_orders,
  sum(producttotalprice) as product_total_price,
  sum(productquantity*productvariant.productpurchase_price) as product_cost_price,
  sum(producttotalprice)-sum(productquantity*productvariant.productpurchase_price) as profit
from 
  {{ref('orderdetail')}} as orderdetail
join
  {{ref('productdetail')}} as productdetail
    on orderdetail.product_id=productdetail.product_id
join
  {{('productvariant')}} as productvariant
    on orderdetail.product_id=productvariant.productname_id
    and orderdetail.orderproductvariant_id=productvariant.productvariant_id 
