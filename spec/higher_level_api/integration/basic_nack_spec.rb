require "spec_helper"

describe Bunny::Channel, "#nack" do
  let(:connection) do
    c = Bunny.new(:user => "bunny_gem", :password => "bunny_password", :vhost => "bunny_testbed")
    c.start
    c
  end

  after :all do
    connection.close if connection.open?
  end

  subject do
    connection.create_channel
  end

  context "with requeue = true" do
    it "requeues a message"
  end

  context "with requeue = false" do
    it "rejects a message"
  end

  context "with multiple = true" do
    it "rejects multiple messages"
  end
end