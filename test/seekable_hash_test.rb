require File.dirname(__FILE__) + '/test_helper'
 
describe SeekableHash do
  it "should lookup deep values" do
    hash = SeekableHash["foo" => { "bar" => "baz" }]
    hash.seek("foo").must_equal("bar" => "baz")
    hash.seek("foo", "bar").must_equal "baz"
  end

  it "should return nil when a key returns a non-hash value" do
    hash = SeekableHash["foo" => { "bar" => "baz" }]
    hash.seek("foo", "bar", "baz").must_equal nil
  end

  it "should return nil when a key is missing" do
    hash = SeekableHash["foo" => { "bar" => "baz" }]
    hash.seek("foo", "boot").must_equal nil
    hash.seek("foo", "boot", "bar").must_equal nil
  end
end
