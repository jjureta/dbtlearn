{{ 
    config(
        materialized = 'view'
    )
}} 

WITH stg_hosts AS (
    SELECT *
    FROM {{ ref('stg_hosts') }}
)

SELECT
    host_id,
    is_superhost,
    created_at,
    updated_at,
    COALESCE(host_name, 'Anonymous') AS host_name
FROM stg_hosts
