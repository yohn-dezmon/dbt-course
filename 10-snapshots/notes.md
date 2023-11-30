
there is a snapshots folder.  
We create a new file within `snapshots/`  


How to know when to use {% %} vs. {{ }} in Jinja?

{% %} --> is for control statements, loops, and other logic that DOES NOT produce output!  

{% if condition %}  
    do something   
{% else %}  
    do something else   
{% endif %}  


{{ }} --> These expressions print output  

{{ variable }}  
{{ 2+2 }}  


`invalidate_hard_deletes`:  
if any record is deleted from the input table, the snapshot will update the valid_to column from `null` to the date. Ends the life cycle of that record.  

snapshots are always based off of a select statement, often a select * statement.  

```
dbt snapshot
```

