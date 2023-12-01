# Macros

`/macros` folder  
you define control structures with Jinja.  
You define a function definition in the outer control structure.  
In our case we accept a model as input.  

I think we used a macro within our macro to get the columns of a given table.

# Custom Tests

also live in the `macros/` folder.  
macros allow you to make your SQL dynamic! :D  

after you add a new file to macros, you can create a new entry in the generic tests yaml file that points to the custom test.  

you reference it by the name of the test which is defined in the first line of the macro!! Not by the filename.  



# Packages

dbt has some packages it supports, there are also third party packages.  

`dbt_utils` is one of the dbt packages.  
create new file `packages.yml`.  

To install packages:
```
dbt deps
```
deps == dependencies.  

`surrogate_key` -- you can generate a primary key for your table if it doesn't already have a primary key :D  
you can combine existing columns in a table to create a surrogate key!  

once installed, you can call `dbt_utils` macros within your models:  
```
{{ dbt_utils.surrogate_key() }}
```

add 
```
dbt run --full-refresh --select fct_reviews
```

the surrogate key ends up being a hash of the column values!!!  

