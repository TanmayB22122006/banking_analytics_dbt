with raw_customers as (
    select * 
    from {{ source('banking_raw', 'CUSTOMERS') }}
),

cleaned_customers as (
    select 
        CUSTOMER_ID,
        CUSTOMER_SEGMENT,
        CITY,
        STATE,
        CUSTOMER_SINCE,
        CUSTOMER_STATUS
    from raw_customers
)

select * from cleaned_customers