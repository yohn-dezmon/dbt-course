# ETL 

Storage used to be expensive.  
Used to use single node databases.  
Compute was usually done outside of the database.  

Extraction (collection) & transform was done outside of the db.  


ETL Issues:
- change in the schema, then your model is broken
- data velocity changes over time... 
- 

# ELT

extract, load, transform

storage is now cheap.  
computation is cheap.  
You just load data from source systems directly into a staging area within the db.  
You can do this by loading data into Redshift, BigQuery, and Snowflake.  
You also can do the transforms within the database since those data warehouse technologies allow for efficient computations to be done at scale.  

* Hm if you do transforms within the db, then when does Spark come into play? When would you use Spark over dbt?  

Extract and Load are done by `Fivetran` (or `Airbyte`) which is the open source technology!.


the "analytics engineering workload" will be performed at the `data integration` step.  


