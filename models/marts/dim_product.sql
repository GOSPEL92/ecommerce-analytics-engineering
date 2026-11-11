{{ config(materialized='view') }}

select

    stock_code,

    max(description) as description

from {{ ref('stg_ecommerce') }}

where stock_code is not null
  and stock_code <> ''

group by stock_code