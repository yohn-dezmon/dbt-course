# Ephemeral materializations

Ok I think the idea here is that we just need the src CTEs **while we run dbt run** and we don't care about storing them in the db, so we will just materialize them as ephemeral CTEs! 


in `dbt_project.yml` within the `models` section, you can specify that you want all of the models with in the `src` directory to by default be materialized as ephemeral CTEs :D

Since you created them as views preivously, they are still in snowflake, but now they don't get created when you run dbt run...

You can drop the views yourself in snowflake.
