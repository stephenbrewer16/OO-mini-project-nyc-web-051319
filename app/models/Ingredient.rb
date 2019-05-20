class Ingredient
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ingredients = {}
    Allergy.all.map do |allergy|
      ingredients[allergy.ingredient] ||= 0
      ingredients[allergy.ingredient] += 1
    end
    most_common = ingredients.max_by do |ingredient, amount|
      amount
    end[0]
  end
end
