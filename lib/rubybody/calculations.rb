module Rubybody

  def self.bmr(height, weight, age, gender, method)
    case method.to_sym
    when :mifflin_st_jeor
      Formulas::mifflin_st_jeor(height, weight, age, gender)
    when :harris_benedict
      Formulas::harris_benedict(height, weight, age, gender)
    else
      raise "ArgumentError"
    end
  end

  def self.tdee(bmr, activity_level)
    Formulas::typical(bmr, activity_level)
  end

end