select

    customer_id,

    country,

    total_orders,

    customer_lifetime_value,

    ntile(4) over (
        order by customer_lifetime_value desc
    ) as customer_tier,

    rank() over (
        order by customer_lifetime_value desc
    ) as customer_rank

from {{ ref('int_customer_orders') }}