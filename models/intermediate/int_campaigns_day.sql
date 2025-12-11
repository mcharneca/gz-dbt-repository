 WITH int_campaign_day AS (
    SELECT 
     date_date
     ,COUNT(DISTINCT campaign_key) AS nb_campaigns
     ,ROUND(SUM(ads_cost),0) AS ads_cost
     ,COUNT(impression) AS nb_impression
     ,SUM(click) AS nb_click
FROM {{ref("int_campaigns")}}
GROUP BY  date_date
)

SELECT
     date_date
     ,nb_campaigns
     ,ads_cost
     ,nb_impression
     ,nb_click
FROM int_campaign_day
ORDER BY  date_date DESC