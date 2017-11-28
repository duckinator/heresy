require "spec_helper"
require "heresy/string"

describe "String#format" do
  it "has numbered references" do
    result = "foo {0} {1}".format("bar", "baz")

    result.must_equal "foo bar baz"
  end

  it "has named references using String keys" do
    result = "foo bar {a}".format("a" => "baz")

    result.must_equal"foo bar baz"
  end

  it "has named references using Symbol keys" do
    result = "foo bar {a}".format(a: "baz")

    result.must_equal"foo bar baz"
  end
end
