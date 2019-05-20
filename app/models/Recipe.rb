class Recipe
  attr_accessor :name, :ingredient
  @@all = []

  def initialize(name)
    @name = name
    @ingredient = []

    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    recipe_cards.all.map do |recipe_card|
      recipe_card.user
    end
  end

  def ingredients
    recipe_cards.all.map do |recipe_card|
      recipe_card.ingredient
    end
  end

  def add_ingredients(array)
    array.each do |supplies|
      RecipeIngredient.new(supplies, self)
      @ingredient << supplies
    end
  end

  def allergens
    problems = []
    Allergy.all.select do |allergen|
      if @ingredient.include?(allergen.ingredient)
        problems << allergen.ingredient
      end
    end
    problems
  end

  def self.most_popular
    max_card = RecipeCard.all.max_by do |card|
      card.recipe.recipe_cards.count
    end
    max_card.recipe
  end

end
