with customer_tab as (
    select * from {{ref('Customer')}}
),
orders as (
    select * from {{ref('Orders')}}
),

customer_order as (
select a.id as customer_key, o_orderkey,o_orderstatus,o_orderdate,o_orderpriority, sum(o_totalprice) total_price
from customer_tab a
left outer join orders b on a.ID=b.o_custkey
group by all
)

select * from customer_order