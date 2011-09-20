module MongoStats
  class Connection

    attr_reader :connection

    def initialize
      @connection = Mongo::Connection.new()
    end


    def db_stats(database)
      DbStats.new(database, self.connection)
    end

    def server_stats
      ServerStats.new(self.connection)
    end
  end
end
