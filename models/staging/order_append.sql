{{ config(
    materialized="incremental",
    incremental_strategy="append",
    pre_hook="TRUNCATE TABLE {{ this }}",
    post_hook="TRUNCATE TABLE {{ref('orders')}}"
) }}

select * from {{ref('orders')}}  limit 15