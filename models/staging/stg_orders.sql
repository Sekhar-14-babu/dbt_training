select 
--from raw orders table
order_id,
orderdate,
shipmode,
ordercostprice,
ordersellingprice,
ordersellingprice-ordercostprice as order_profit
from {{ ref('raw_orders') }}
