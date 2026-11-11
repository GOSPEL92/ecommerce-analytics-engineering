select

    stock_code,

    description,

    count(*) as adjustment_transactions,

    sum(abs(quantity)) as units_adjusted,

    sum(abs(sales_amount)) as adjustment_value

from {{ ref('stg_ecommerce') }}

where transaction_type = 'Inventory Adjustment'

group by

    stock_code,
    description