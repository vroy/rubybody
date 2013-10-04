require 'spec_helper'

describe Rubybody::Person do
  it "should return a bmr of 1851 for a 72 inches tall, 175lbs, 25 year old male" do
    height = Unit("72 inches").to("cm").scalar.to_f
    weight = Unit("175 lbs").to("kg").scalar.to_f
    age = 25
    gender = :male
    person = Rubybody::Person.new(weight, height, age, gender)
    person.bmr.to_i.should eql(1816)
    person.tdee.to_i.should eql(2180)
  end

  it "should return a bmr of 1247 for a 65 inches tall, 110lbs, 25 year old female" do
    height = Unit("65 inches").to("cm").scalar.to_f
    weight = Unit("110 lbs").to("kg").scalar.to_f
    age = 25
    gender = :female
    person = Rubybody::Person.new(weight, height, age, gender)
    person.bmr.to_i.should eql(1244)
    person.tdee.to_i.should eql(1493)
  end
end
