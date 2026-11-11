{{ config(materialized='view') }}

select

    customer_id,

    max(country) as country

from {{ ref('stg_ecommerce') }}

where customer_id is not null
  and customer_id <> ''

group by customer_id