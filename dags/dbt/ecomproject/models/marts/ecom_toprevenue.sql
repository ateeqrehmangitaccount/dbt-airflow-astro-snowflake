select 
  top 10 productdetail.product_name,
  orderdetail.product_id,sum(producttotalprice)
from 
  {{ref('orderdetail')}} as orderdetail
join
  {{('productdetail')}} as productdetail
    on orderdetail.product_id=productdetail.product_id
    group by orderdetail.product_id,productdetail.product_name
    order by sum(producttotalprice) desc

