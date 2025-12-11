  SELECT
      products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchase_price,
      ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
      ROUND(s.revenue - s.quantity*p.purchase_price, 2) AS margin,
     {{ margin_percent( {{ 'revenue' }}, {{ 'purchase_cost' }}) }} AS margin_percent
  FROM {{ref("stg_raw__raw_gz_sales")}} s
  LEFT JOIN {{ref("stg_raw__raw_gz_product")}} p
      USING (products_id)
