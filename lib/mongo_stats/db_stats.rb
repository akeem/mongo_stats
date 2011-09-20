module MongoStats
  class DbStats

    def initialize(database, connection)
      db = connection.db(database)

      db.stats.each{|key, value|
        define_singleton_method(key.to_sym){value}
      }
    end

  end
end
