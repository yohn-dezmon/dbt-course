# Recall

ephemeral materializations are when you only need the views within your pipline and not in your data warehouse.  

Views are lightweight tables that actually exist in the warehouse.  

You can have a default materialization type for a given folder within `dbt_project.yml`.  

You can override this for specific models by placing the:  
```jinja
{{
    config (
        materialization = incremental,
    )
}} 
```

at the top of the file. 
