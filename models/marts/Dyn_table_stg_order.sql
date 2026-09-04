{{ config(
    materialized='dynamic_table',
    snowflake_warehouse='dbt_wh',
    target_lag='1 hour'
) }}

select
    customer_id,
    sum(montant) as total_depense,
    count(*)     as nb_commandes
from {{ ref('stg_orders') }}
group by 1