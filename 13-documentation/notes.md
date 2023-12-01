
add a `description` directly beneath each table/column you want to add documentation for! (within `schema.yml`). 


```
dbt docs generate
```


within the target folder the `target/catalog.json` contains the documentation.  
`index.html` -- its HTML documentation.  

you can launch an HTTP documentation server.  
For production grade HTTP server, you should create your own.  

```
dbt docs serve
```

for more sophisticated documentation:
```
description: '{{ doc("dim_listing_cleansed__minimum_nights") }}'
```

then define it with markdown.  
But in the markdown you need to use 
{% docs dim_listing_cleansed__minimum_nights %}
{% enddocs %}

```
dbt docs serve
```

You can update the overview file as well!  

`/assets` folder for storing files you don't want to be available publicly but you need for documentation.  


