# Data Warehouses 

These work well with columnar data.
Can't handle unstructured data like images and videos.  
Use SQL on top of it.  
Use for reporting/dashboard purposes.  

On premise is good for strict compliance.  
Cloud -- extremely scalable.  


# Data lake 

You pay for compute nodes, regardless of whether they are used.  
Set up autoscaling...  

### External Tables 
- store large files outsdie of the data warehouse (S3, HDFS, blob).
- scale compute and storage independently 
- still run SQL on top of external tables via Snowflake for example

For unstructured data:
- what is semi-structured data?
- storing files...
- compute separate from storage...
- snowflake uses data lake


# Data Lakehouse

- combines ACID with data lake
- metadata
- schema stored in lakehouse metastore
- governance: control & have access control!
