
Snapshots:
- they implement SCD 2 
- they use valid_from and valid_to columns
- "active" columns have valid_to set to null 
- if you udpate a given row, then run `dbt snapshot` then query that row, you'll get back two rows, one with an valid_from and valid_to with values up until the time of the `dbt snapshot` run and another with valid_from set to that time and null in the valid_to field. 
- You have to create a snapshot SQL file in `snapshots/`
- you create a Jinja function with {% snapshot %}
- you call select * within the jinja function 
- you also need a config {{ }} block within the {% snapshot %} function 
- you can set the `strategy` for a given snapshot, in this case we used `timestamp`... I forget what the other strategy was. `check` or something like that.
- `timestamp` relies on there being a column with a timestamp that reflects when that row was inserted into the db.
- that column is called the `updated_at` column and has to be set in the config. 
- `dbt` creates 4 columns, `dbt_updated_at`, `dbt_valid_from`, `dbt_valid_to`
- `dbt_updated_at` is just the initial value from whatever column you set as the `updated_at` column. 
- you need to set a `unique_key` as well
- setting `invalidate_hard_deletes` makes sense so you update rows that are deleted with a non-null `valid_to` value when they are deleted in the source table! 
- the other strategy is `check` -- any chaneg in a set of columns will be picked up as an update.  


