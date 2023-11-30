# Tests

singular tests  
generic tests  

`schema.yml` within the `models/` folder.  

you can implement tests on specific columns.  

```
dbt test
```

Tests are especially useful for data lakes and data warehouses where unique constraints, or not null constraints on columns are not supported!  
Same for accepted values (could just use ENUM in postgres)  
same for relationships (can just use FK constraint in postgres)  


if a test fails you can visit the compiled SQL at:  
`target/compiled/dbtlearn/models/schema.yml/...`  

singular tests live in the `/tests` folder as SQL files.  

```
dbt test --select dim_listings_cleansed
```
