# Slowly Changing Dimensions

* particular data that changes rarely and unpredictablly!!!! (revisions!!!!)
* sometimes you need historical data, sometimes you don't
* often for ML you need the historical data

## SCD 0 

- "dimension change" is only applied to the source table and not to the data warehouse table
- Airbnb, someone changes their fax number.
- no longer need fax data, so skip updating the fax data in customer data... this is SCD 0
- 

# SCD 1 

Airbnb

- people can update whether or not they have air conditioner 
- in this case the historical data of them previously not having AC doesn't matter, so we just use SCD1 and update the existing row 
- we update the row in both the source and the DWH fact table 

I'm a bit confused, what is the "source" table here referring to?  

# SCD 2

- current data stays in data warehouse
- even current data has start/end date on each row
- all historical data kept in the source db
- historical data also has start/end date on each row so we know when the event was "active".

# SCD 3

- keeping some history data
- the active erow has two columns, "previous_type" and "current_type"
- the active row's current type is hte actual current type
- each time the type updates, you update those two columns
- you can either choose to store or not store the historical rows...



