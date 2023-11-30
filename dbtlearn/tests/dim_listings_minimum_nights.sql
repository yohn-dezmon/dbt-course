SELECT 
    *
FROM 
    {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
LIMIT 10

-- is the idea that this should return 0 rows?
-- YES!
