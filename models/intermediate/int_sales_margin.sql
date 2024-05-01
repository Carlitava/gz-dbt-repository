SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity,  
    ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*p.purchase_price,2) AS margin
FROM {{ref("stg_raw_raw_gz_sales")}} s
LEFT JOIN {{ref("sgt_raw_raw_gz_product")}} p 
    USING (products_id) 