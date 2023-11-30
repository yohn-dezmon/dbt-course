# Recall

There are singular and generic tests.

Types of generic tests:
- relationship (like a FK constraint)
- not_null (like a not null constraint)
- unique (like a unique constraint)
- valid values (what was the name for this again) (like an ENUM)

you define generic tests in a `.yml` file in `models/`. Typical to name it `schema.yml`.  

you define singular tests in `tests/`  
These are just SQL select statements.  
The idea is that they should not return any rows. If they do, the test will fail.  

You can debug the SQL that was executed for generic tests by going to the target folder.  

run tests with:

```
dbt test
```

if you want to only run tests on a given model:
```
dbt test --select name_of_model
```

generic tests are especially useful when you're using a system that doesn't provide those constraints like postgres does.  

