# Analyses 

i.e. running ad-hoc queries but still using dbt models and macros.  

```
dbt compile
```

queries are then in `/target/compiled/dbtlearn/analyses/`  
you can take that query and then run it against the data warehouse.  

# Hooks 

predefined SQL that runs at specific parts of the pipeline.  
You can define hooks in `dbt_project.yml`  
but also in other places.  

```
models:
  dbtlearn:
  # explicit default
    +materialized: view
    +post-hook:
      - "GRANT SELECT ON {{ this }} TO ROLE REPORTER"
```

This is a hook that will be executed for every model in the dbt package.  

```
dbt run
```

4 different kinds of hooks: 
1. `on_run_start`: executed at the start of dbt {run, seed, snapshot}
2. `on_run_end`: executed at the end of dbt {run, seed, snapshot}
3. `pre-hook`: executed before a model/seed/snapshot is built 
4. `post-hook`: executed after a model/seed/snapshot is built


# Exposures  

we're integrating the preset dashboard into dbt as an exposure.  
exposures: configurations that can point to external resources.  

```
models/dashboards.yml
```

you can put the exposure yaml data into any yaml file in your dbt repo.  

```
dbt docs generate
dbt docs serve
```
