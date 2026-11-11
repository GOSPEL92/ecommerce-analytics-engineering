{{ config(materialized='view') }}

select distinct

    cast(invoice_date as date) as date_day,

    year(invoice_date) as year,

    month(invoice_date) as month_number,

    datename(month, invoice_date) as month_name,

    datepart(quarter, invoice_date) as quarter

from {{ ref('stg_ecommerce') }}