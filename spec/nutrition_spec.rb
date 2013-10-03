require 'spec_helper'

describe Nutrition do
  it "should return 150 calories" do
    f = Nutrition::Food.new(10, 10, 10)
    f.calories.should eql(150)
  end
end
