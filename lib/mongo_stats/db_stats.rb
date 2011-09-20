module MongoStats
  class DbStats

    def initialize(database, connection)
      db = connection.db(database)
      @stats = db.stats
    end

    def collections
      @stats['collections']
    end

    def objects
      @stats['objects']
    end

    def data_size
      @stats['dataSize']
    end

    def storage_size 
      @stats['storageSize']
    end

    def num_extents
      @stats['numExtents']
    end

    def indexes
      @stats['indexes']
    end

    def index_size
      @stats['index_size']
    end

    def ok
      @stats['ok']
    end

  end
end
