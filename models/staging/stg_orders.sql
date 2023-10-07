select 
--from raw orders table
o.order_id,
o.orderdate,
o.shipmode,
o.ordercostprice,
o.ordersellingprice,
o.ordersellingprice-o.ordercostprice as order_profit,
--from customer table
c.customer_id,
c.customername,
c.segment,
c.country,
--from product table
p.productid,
p.category,
p.productname,
p.subcategory 
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on (o.customer_id = c.customer_id )
left join {{ ref('raw_product') }} as p 
on(o.product_id = p.productid)