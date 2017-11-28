require "spec_helper"
require "heresy/default"

def test(arg1 = default)
  arg1.default?
end

TEST_STRING = "default value!"

describe "default" do
  describe "a method with an argument set to default" do
    describe "with no argument passed" do
      it "sets the argument to `default`" do
        test.must_equal true
      end
    end

    describe "with an argument passed" do
      it "sets the argument to what was passed" do
        test(1).must_equal false
      end
    end
  end

  describe "default" do
    it "has a nil? that returns true" do
      default.nil?.must_equal true
    end

    describe "#inspect" do
      it "returns \"default\"" do
        default.inspect.must_equal "default"
      end
    end
  end
end
