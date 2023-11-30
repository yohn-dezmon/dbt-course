SELECT * 
FROM 
 {{ ref('fct_reviews') }} as fct_reviews
INNER JOIN {{ ref('dim_listing_cleansed') }} as dim_listing_cleansed
ON fct_reviews.LISTING_ID = dim_listing_cleansed.LISTING_ID
WHERE review_date <= created_at
