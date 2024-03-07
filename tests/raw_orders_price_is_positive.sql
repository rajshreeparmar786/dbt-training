with 
orders as (
        select * from  {{ ref('raw_orders') }}
)

select
    orderid,
    sum(prdersellingprice) as total_sp
from orders
group by orderidhaving total_sp<0