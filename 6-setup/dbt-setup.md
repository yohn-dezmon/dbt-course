# dbt init 

https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/learn/lecture/37985546#content

`Activate-MyEnv`

creating a dbt configuration file is different on mac vs windows.  
you need a `.dbt` folder in your "home folder".  

if you run this in command prompt it should work but we already created it manually:  
`mkdir %userprofile%\.dbt`

# Creating a new project!

account identifier: YZSYORF.WL36460
`dbt init dbtlearn` -- dbtlearn is the name of the new project

login name / username: `dbt`
password: `dbtPassword123`

^ the rest of the values are from the first SQL block in the course resources markdown file.  

`cd dbtlearn`  
`dbt debug`  


:( my connection did not work :(

-- jo91919.us-east-2
-- YZSYORF.WL36460
-- JO91919 == my account?
-- WL36460

```SQL
select CURRENT_ACCOUNT();
-- JO91919
-- J
```

valid names so far:
-- jo91919.us-east-2
-- YZSYORF.WL36460

invalid names so far:
-- JO91919
-- WL36460

```
  >Database Error
  250001 (08001): Failed to connect to DB. Verify the account name is correct: WL36460.snowflakecomputing.com:443. HTTP 403: Forbidden
```

Let's try replacying `.` with a `-`...
https://github.com/snowflakedb/snowflake-connector-python/issues/1364
https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/learn/lecture/37985546#questions/19962314


`YZSYORF-WL36460`


```
12:58:50  Connection:
12:58:50    account: YZSYORF.WL36460
12:58:50    user: dbt
12:58:50    database: AIRBNB
12:58:50    schema: DEV
12:58:50    warehouse: COMPUTE_WH
12:58:50    role: transform
12:58:50    client_session_keep_alive: False
12:58:50    query_tag: None
12:58:50  Registered adapter: snowflake=1.5.0
12:58:54    Connection test: [ERROR]

```

probably I messed up the password.

schema should be `RAW`
idk what the account should be still 

failed as well...
going to try typing everything by hand...
```
dbtlearn:
  outputs:
    dev:
      account: YZSYORF.WL36460
      database: AIRBNB
      password: dbtPassword123
      role: transform
      schema: RAW
      threads: 1
      type: snowflake
      user: dbt
      warehouse: COMPUTE_WH
  target: dev
```


# SUCCESS 

```
dbtlearn:
  outputs:
    dev:
      account: YZSYORF-WL36460
      database: AIRBNB
      password: dbtPassword123
      role: transform
      schema: RAW
      threads: 1
      type: snowflake
      user: dbt
      warehouse: COMPUTE_WH
  target: dev
```

stopped here: 
https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/learn/lecture/34060350#questions/19962314


https://app.snowflake.com/yzsyorf/wl36460/worksheets

