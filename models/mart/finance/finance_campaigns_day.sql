WITH finance_campaigns_day AS (
    SELECT
     f.date_date
     , f.revenue
     , f.margin
     , f.operational_margin
     , f.purchase_cost
     , f.shipping_fee
     , f.log_cost
     , f.ship_cost
     , f.quantity
     , f.average_basket
     , c.nb_campaigns
     , c.ads_cost
     , c.nb_impression
     , c.nb_click
FROM {{ref("finance_days")}} AS f
JOIN {{ref("int_campaigns_day")}} AS c
    on f.date_date = c.date_date

)

SELECT
     date_date
     ,operational_margin - ads_cost AS ads_margin
     ,average_basket
     ,operational_margin
     ,ads_cost
     ,nb_impression
     ,nb_click
     ,quantity
     ,revenue
     ,purchase_cost
     ,margin
     ,shipping_fee
     ,log_cost
     ,ship_cost
FROM finance_campaigns_day
ORDER BY  date_date DESC