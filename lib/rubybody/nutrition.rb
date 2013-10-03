module Nutrition

  PROTEIN_CALORIES = 4
  CARB_CALORIES = 4
  FAT_CALORIES = 7

 class Food

  attr_accessor :protein, :carb, :fat

  # All nutriments are expressed in grams
  def initialize(protein, carb, fat)
    self.protein = protein
    self.carb = carb
    self.fat = fat
  end

  def calories
    return self.protein * PROTEIN_CALORIES + self.carb * CARB_CALORIES + self.fat * FAT_CALORIES
  end

 end

end