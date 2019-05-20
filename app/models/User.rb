class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end


  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end


  def allergies
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergens
    allergies.all.map do |allergy|
      allergies.ingredient
    end
  end

end
