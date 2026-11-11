{{ config(materialized='view') }}

select

    invoice_no,

    customer_id,

    stock_code,

    cast(invoice_date as date) as date_day,

    quantity,

    unit_price,

    sales_amount,

    transaction_type

from {{ ref('stg_ecommerce') }}