module Calculations

  def self.bmr(height, weight, age, gender, method)
    case method.to_sym
    when :mifflin_st_jeor
      Formulas::BMR::mifflin_st_jeor(height, weight, age, gender)
    when :harris_benedict
      Formulas::BMR::harris_benedict(height, weight, age, gender)
    else
      raise "ArgumentError"
    end
  end

  def self.tdee(bmr, activity_level)
    Formulas::TDEE::typical(bmr, activity_level)
  end

end