require 'spec_helper'

describe Rubybody::Formulas do
  it "should return a bmr of 1851 for a 72 inches tall, 175lbs, 25 year old male" do
    height = Unit("72 inches").to("cm").scalar.to_f
    weight = Unit("175 lbs").to("kg").scalar.to_f
    age = 25
    gender = :male
    Rubybody::Formulas::mifflin_st_jeor(weight, height, age, gender).to_i.should eql(1816)
  end

  it "should return a bmr of 1851 for a 72 inches tall, 175lbs, 25 year old female" do
    height = Unit("72 inches").to("cm").scalar.to_f
    weight = Unit("175 lbs").to("kg").scalar.to_f
    age = 25
    gender = :female
    Rubybody::Formulas::mifflin_st_jeor(weight, height, age, gender).to_i.should eql(1650)
  end
end
