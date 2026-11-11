select

    stock_code,

    description,

    count(*) as return_transactions,

    sum(abs(quantity)) as returned_units,

    sum(abs(sales_amount)) as return_value

from {{ ref('stg_ecommerce') }}

where transaction_type = 'Customer Return'

group by

    stock_code,
    description