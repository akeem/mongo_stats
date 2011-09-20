require 'bundler/setup'
require 'mongo'
require 'bson'
require "mongo_stats/version"
require "mongo_stats/connection"
require "mongo_stats/db_stats"
require "mongo_stats/server_stats"

module MongoStats
  class << self

    def connection
      Connection.new
    end

  end
end
