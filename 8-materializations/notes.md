# Materializations

* how models can be connected
* four built-in materializations

# 4 types (built-in)

* View: a lightweight representation. Useful if you don't reuse the data that often. Everytime you want to read the data, you have to re-execute the view.
* Table: each time you re-run dbt run, an actual table will be created. This should be used if you plan on reading this data often. 
* Incremental: useful for `fact tables` and frequent appends to a table (e.g. `event data`). Don't use this if you need to update historical records.
* Ephemeral (CTE): used if you need an alias to your data... I think this is used if you're just reading your data once. 

**What is the difference between a View and Ephemeral CTE materializations?**
- in comparison to a view, an ephemeral CTE doesn't actually get stored in the database! It's just used within a given query.


hmmm ok with the models we've created so far in src/ are those views, tables, incremental or ephemeral?
* these were all `views`
* they show up as views in snowflake!
* so default for a model is to be a view?

Is there a way to only run dbt run for specific models so we don't keep recreating the files each time?


```yml
models:
  dbtlearn:
  # explicit default
    +materialized: view
    dim:
        +materialized: table
```

^ in dbt_project.yml -- thats how you set the default for what materializations models become.


Good question for data engineering interviews:
- how to ensure that only new data is ingested when ingestin from a source?
```sql
select * from new_data where reporting_date > 'most-recent-reporting-date'
```



```jinja
{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
```

^ model level configuration 
- materialization incremental! (i.e. only new rows added to the existing table/view)
- if schema changes, it should fail...

you have to tell dbt how it can know if a record is new or not.

New row:
We ran this in Snowflake, then we used `dbt run` to update the view...
```SQL
INSERT INTO "AIRBNB"."RAW"."RAW_REVIEWS"
VALUES (3176, CURRENT_TIMESTAMP(), 'Zoltan', 'excellent stay!', 'positive');
```

```
02:14:07  Finished running 3 view models, 2 table models, 1 incremental model in 0 hours 0 minutes and 11.26 seconds (11.26s).
```

if you want to do a full refresh of the table as opposed to an incremental load:
`dbt run --full-refresh`


