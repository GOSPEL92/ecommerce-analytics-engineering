select

    transaction_type,

    count(*) as transaction_count,

    sum(sales_amount) as revenue_impact,

    sum(quantity) as quantity_impact

from {{ ref('stg_ecommerce') }}

group by

    transaction_type