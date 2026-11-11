select

    country,

    count(distinct customer_id) as customer_count,

    count(distinct invoice_no) as order_count,

    sum(quantity) as total_units_sold,

    sum(sales_amount) as total_revenue,

    min(invoice_date) as first_sale_date,

    max(invoice_date) as last_sale_date

from {{ ref('stg_ecommerce') }}

where transaction_type = 'Sale'

group by country