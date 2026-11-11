select

    customer_id,

    country,

    count(distinct invoice_no) as total_orders,

    sum(quantity) as total_units,

    sum(sales_amount) as customer_lifetime_value,

    min(invoice_date) as first_order_date,

    max(invoice_date) as last_order_date

from {{ ref('stg_ecommerce') }}

where transaction_type = 'Sale'

group by

    customer_id,
    country