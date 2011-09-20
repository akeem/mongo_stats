require 'bundler/setup'
require 'mongo'
require 'bson'
require "mongo_stats/version"
require "mongo_stats/connection"
require "mongo_stats/db_stats"
require "mongo_stats/server_stats"

module MongoStats
  class << self

    def connection(host = nil, port = nil, opts = {})
      Connection.new(host, port, opts)
    end

  end
end
