# Materializations

* how models can be connected
* four built-in materializations

# 4 types (built-in)

* View: a lightweight representation. Useful if you don't reuse the data that often. Everytime you want to read the data, you have to re-execute the view.
* Table: each time you re-run dbt run, an actual table will be created. This should be used if you plan on reading this data often. 
* Incremental: useful for `fact tables` and frequent appends to a table (e.g. `event data`). Don't use this if you need to update historical records.
* Ephemeral (CTE): used if you need an alias to your data... I think this is used if you're just reading your data once.

**What is the difference between a View and Ephemeral CTE materializations?**


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

