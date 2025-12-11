with 

source as (

    select * from {{ source('raw', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        CAST(revenue AS INT64) AS revenue,
        CAST(quantity AS INT64) AS quantity

    from source

)

select * from renamed