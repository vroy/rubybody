module Rubybody

  PROTEIN_CALORIES = 4
  CARB_CALORIES = 4
  FAT_CALORIES = 9
  ALCOHOL_CALORIES = 7

 class Food

  attr_accessor :protein, :carb, :fat, :alcohol

  # All nutriments are expressed in grams
  def initialize(protein, carb, fat, alcohol=0)
    self.protein = protein
    self.carb = carb
    self.fat = fat
    self.alcohol = alcohol
  end

  def calories
    return self.protein * PROTEIN_CALORIES + self.carb * CARB_CALORIES + self.fat * FAT_CALORIES + self.alcohol * ALCOHOL_CALORIES
  end

 end

end