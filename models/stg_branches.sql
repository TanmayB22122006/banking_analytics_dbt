with raw_branches as (
    select * from {{ source('banking_raw', 'BRANCHES') }}
),
cleaned_branches as (
    select * exclude (_FIVETRAN_SYNCED)
    from raw_branches
)
select * from cleaned_branches