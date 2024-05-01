with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(ship_cost AS FLOAT64) AS ship_cost,
        CAST(logCost AS FLOAT64) AS log_cost,
        CAST(shipping_fee AS FLOAT64) AS shipping_fee

    from source

)

select * from renamed