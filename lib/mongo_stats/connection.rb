module MongoStats
  class Connection

    attr_reader :connection

    def initialize(host = nil, port = nil, opts = {})
      @connection = Mongo::Connection.new(host, port, opts)
    end

    def db_stats(database)
      DbStats.new(database, self.connection)
    end

    def server_stats
      ServerStats.new(self.connection)
    end

    def close
      @connection.close
    end

  end
end
