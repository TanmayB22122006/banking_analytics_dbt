with raw_accounts as (
    select * from {{ source('banking_raw', 'ACCOUNTS') }}
),
cleaned_accounts as (
    select * exclude (_FIVETRAN_SYNCED)
    from raw_accounts
)
select * from cleaned_accounts