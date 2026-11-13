with customers as (
    select * from {{ ref('stg_customers') }}
),

accounts as (
    select * from {{ ref('stg_accounts') }}
),

final_analytics as (
    select 
        c.customer_id,
        c.customer_segment,
        c.city as customer_city,
        c.state as customer_state,
        c.customer_since,
        a.account_id
    from customers c
    join accounts a on c.customer_id = a.customer_id
)

select * from final_analytics