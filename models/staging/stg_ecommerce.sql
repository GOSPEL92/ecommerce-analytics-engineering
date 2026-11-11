select

    InvoiceNo as invoice_no,

    StockCode as stock_code,

    Description as description,

    try_cast(Quantity as int) as quantity,

    try_cast(UnitPrice as decimal(10,2)) as unit_price,

    try_cast(InvoiceDate as datetime) as invoice_date,

    CustomerID as customer_id,

    Country as country,

    try_cast(Quantity as int)
        *
    try_cast(UnitPrice as decimal(10,2))
        as sales_amount,

    case

        when InvoiceNo like 'C%'
            then 'Customer Return'

        when try_cast(Quantity as int) < 0
             and try_cast(UnitPrice as decimal(10,2)) = 0
            then 'Inventory Adjustment'

        else 'Sale'

    end as transaction_type

from {{ source('raw', 'e_commence_data') }}

where try_cast(Quantity as int) is not null
  and try_cast(UnitPrice as decimal(10,2)) is not null
  and try_cast(InvoiceDate as datetime) is not null