module MongoStats

  class ServerStats
    def initialize(connection)
      db = connection.db('admin')
      @stats = db.command('serverStatus' => 1)
    end

    def uptime
      @stats['uptime']
    end

    def local_time
      @stats['localTime']
    end

    def global_lock
      @stats['globalLock']
    end

    def mem
      @stats['mem']
    end

    def connections
      @stats['connections']
    end

    def extra_info
      @stats['extra_info']
    end

    def index_counters
      @stats['indexCounters']
    end

    def background_flushing
      @stats['backgroundFlushing']
    end

    def opcounters
      @stats['opcounters']
    end

    def asserts
      @stats['asserts']
    end

    def ok
      @stats['ok']
    end

  end

end
