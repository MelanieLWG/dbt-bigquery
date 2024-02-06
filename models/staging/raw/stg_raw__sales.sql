with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
    pdt_id AS products_id,
    date_date,
    orders_id,
    revenue,
    quantity

    from source

)

select * from renamed
