MongoStats
==========

MongoStats is a convenience library created to provide fast programmatic
access to operational stats for MongoDB servers and databases.

MongoStats was inspired by [John Nunemaker](https://github.com/jnunemaker/)'s Scout MongoDB plugin.

All things considered, the use of MongoStats should make pushing
statistics to your graphing/logging/metric system pretty easy.
___

ex. retrieve the number of collections for a given database

```ruby
  db_connection = MongoStats.connection
  super_models_db_stats = connection.db_stats('super_models')
  
  super_models_db_stats.collections 
```

