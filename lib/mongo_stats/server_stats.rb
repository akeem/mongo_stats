module MongoStats

  class ServerStats
    def initialize(connection)
      db = connection.db('admin')
      server_stats = db.command('serverStatus' => 1)

      server_stats.each{|key, value|
        define_singleton_method(key.to_sym){value}
      }
    end
  end

end
