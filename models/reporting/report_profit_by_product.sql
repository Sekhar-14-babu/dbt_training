select 
    productid,
    productname,
    category,
    subcategory,
    sum(order_profit) as profit
from {{ ref('stg_orders') }}
group by 
    productid,
    productname,
    category,
    subcategory