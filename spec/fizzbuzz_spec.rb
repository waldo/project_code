require "spec_helper"

describe "should" do
  before(:all) do
    @fizz = FizzBuzz.new(15, 1)
  end

  it "return a number" do
    [1, 2, 4, 7, 71, 98].each do |num|
      @fizz.convert(num).should == num
    end
  end

  it "fizz when the number is a multiple of 3" do
    [3, 6, 9, 33, 99].each do |threes|
      @fizz.convert(threes).should == "fizz"
    end
  end

  it "buzz when the number is a multiple of 5" do
    [5, 10, 20, 50, 100].each do |fives|
      @fizz.convert(fives).should == "buzz"
    end
  end

  it "fizzbuzz when the number is a multiple of 3 and 5" do
    [15, 30, 60, 90].each do |both|
      @fizz.convert(both).should == "fizzbuzz"
    end
  end

  it "should print first 15 examples" do
    @fizz.output.should == "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz"
  end
end