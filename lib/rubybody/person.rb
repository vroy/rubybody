class Person

  attr_accessor :height, :weight, :age, :gender, :activity, :bodyfat, :waist

  # All units are in the SI standard
  def initialize(height, weight, age, gender, activity=:sedentary, bodyfat=0, waist=0)
    self.height = height
    self.weight = weight
    self.age = age
    self.gender = gender
    self.activity = activity
    self.bodyfat = bodyfat
    self.waist = waist
  end

  def bmr(method=:mifflin_st_jeor)
    Calculations::bmr(height, weight, age, gender, method)
  end

  def tdee
    Calculations::tdee(bmr, activity)
  end

end