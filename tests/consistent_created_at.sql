SELECT * 
FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
WHERE l.created_at >= r.review_date
