SELECT *
FROM {{source('raw', 'raw_gz_adwords')}}
UNION ALL
SELECT *
FROM {{source('raw', 'raw_gz_bing')}}
UNION ALL
SELECT *
FROM {{source('raw', 'raw_gz_criteo')}}
UNION ALL
SELECT *
FROM {{source('raw', 'raw_gz_facebook')}}