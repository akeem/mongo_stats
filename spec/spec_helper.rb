require 'rubygems'
require 'bundler/setup'
require 'rspec'
require File.expand_path("mongo_stats", File.dirname(__FILE__) + "/../lib/")


RSpec.configure do |c|
  c.mock_with :rspec
end
