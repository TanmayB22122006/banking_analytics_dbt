with raw_transactions as (
    select * from {{ source('banking_raw', 'TRANSACTIONS') }}
),
cleaned_transactions as (
    select * exclude (_FIVETRAN_SYNCED)
    from raw_transactions
)
select * from cleaned_transactions