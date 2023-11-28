Seeds: CSV files or other local files that you load into snowflake.  
You can load a seed in with:
```
dbt seed
```
^^???  

Sources: abstraction on top of existing tables in a data warehouse.  
Once you make something a source, you can refer to it via jinja within a given model (hm but you can do this with other models right, so what is the point?)  

Ok to answer my question: you can use `ref()` in jinja to refer to another model, but what we replaced in our SQL weren't other models, rather they were pre-existing tables in the data warehouse. So we pull them into the dbt ontology by calling them sources.  that allows us to use the `source()` jinja macro.  

You make sources via `models/sources.yml`

```
dbt configure
```
^ check that you configured sources correctly. 

Once you make something a source, you can check for staleness by adding a conditional clause to a given table in `sources.yml`.  


Check for freshness:
```
dbt source freshness
```
