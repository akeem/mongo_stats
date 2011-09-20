require 'spec_helper'

describe MongoStats::Connection do
  describe "instance_methods" do
    it "should provide :db_stats, :server_stats" do
      [:db_stats, :server_stats].each{|instance_method|
        subject.should respond_to instance_method
      }
    end
  end

  describe "#db_stats" do

    context "when able to connect to the MongoDb server" do
      it "should return a DbStats object" do
        subject.db_stats('spec_test').should be_a_kind_of MongoStats::DbStats
      end
    end

    context "when unable to connect to the MongoDb server" do
      it "should raise a Mongo::ConnectionFailure" do
        Mongo::Connection.stub(:new){raise Mongo::ConnectionFailure}
        expect{subject.db_stats('spec_test')}.to raise_error Mongo::ConnectionFailure
      end
    end

  end

  describe "#server_stats" do
    context "when able to connect to the MongoDb server" do
      it "should return a ServerStats object" do
        subject.server_stats.should be_a_kind_of MongoStats::ServerStats
      end
    end

    context "when unable to connect to the MongoDb server" do
      it "should raise a Mongo::ConnectionFailure" do
        Mongo::Connection.stub(:new){raise Mongo::ConnectionFailure}
        expect{subject.server_stats}.to raise_error Mongo::ConnectionFailure
      end
    end
  end

end

