select *

from {{ source('raw', 'e_commence_data') }}

where try_cast(Quantity as int) is null
   or try_cast(UnitPrice as decimal(10,2)) is null
   or try_cast(InvoiceDate as datetime) is null