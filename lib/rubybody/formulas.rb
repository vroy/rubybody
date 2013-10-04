module Rubybody
  
  module Formulas

    def self.mifflin_st_jeor(weight, height, age, gender)
      
      base = 10*weight + 6.25*height - 5*age

      case gender.to_sym
      when :male
        return base + 5
      when :female
        return base - 161
      else
        raise "ArgumentException"
      end

    end

    def self.harris_benedict(weight, height, age, gender)
      
      case gender.to_sym 
      when :male
        return 66 + 6.23*(weight * 2.20462) + 12.7*(height * 0.393701) - 6.76 * age
      when :female
        return 655 + 4.35*(weight * 2.20462) + 4.7*(height * 0.393701) - 4.7 * age
      end

    end

    def self.typical(bmr, activity_level)

      case activity_level.to_sym
      when :sedentary
        return bmr * 1.2
      when :lightly_active
        return bmr * 1.375
      when :moderately_active
        return bmr * 1.55
      when :very_active
        return bmr * 1.75
      when :extra_active
        return bmr * 1.9
      else
        raise "ArgumentException"
      end

    end

  end
end