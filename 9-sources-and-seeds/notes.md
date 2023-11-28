# Seeds

populates CSV seed files to snowflake!  
```
dbt seed
```
it gets created as a table.  

mart (folder in models):  
- holds tables and views that are accessible by our BI layer  


# Sources

you can create a new source via `sources.yml` (or any name I think) within `models/`.  


Checks if sources and references are consistent:
```
dbt compile
```

# Check for source staleness  

-- if you have ingest running on a schedule, you can check for table staleness.  
-- check timestamp of ingested data  

you add the staleness conditions to the `sources.yml` file.  


Check for freshness:
```
dbt source freshness
```

this fails, because the last time we updated `reviews` was over 24 hr ago.  

