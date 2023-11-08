# Models

- materialized tables/views (SQL definitions)
- stored as .sql files in the models folder
- they can reference each other... you can use jinja/macros


# Common Table Expression (CTE)

- temporarily named result set
- result remains in memory 

```SQL
WITH name AS (
    select * from nada;
) 
select * from name;
```

readable, easy to maintain.  
a query can be broken down into simple building blocks.  

# Creating our first model: Airbnb listings

1:1 mapping of SQL files --> views/models.

```SQL
USE DATABASE AIRBNB;

WITH raw_listings AS (
    SELECT * from RAW.RAW_LISTINGS
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings;
```

you can use subfolders in models...  

To execute dbt:
- `dbt run`

This ends up creating a new view within the `DEV` schema.  
It's in the `DEV` schema because we set that up when we defined the `dbtlearn` project via the `profiles.yml`.  


