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
    COALESCE(host_name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM stg_hosts
