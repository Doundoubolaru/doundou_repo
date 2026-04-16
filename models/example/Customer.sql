{{ config(materialized='table') }}

with customer as (
select * from DOUNDOU_DB.DBT_DOUNDOUBOLARU.CUSTOMERS
)

select * from customer