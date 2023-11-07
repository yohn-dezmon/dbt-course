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

