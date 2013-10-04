require 'spec_helper'

describe Rubybody do
  it "should return 150 calories" do
    f = Rubybody::Food.new(10, 10, 10)
    f.calories.should eql(170)
  end
end
