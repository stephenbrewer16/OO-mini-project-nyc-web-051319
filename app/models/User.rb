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

  def top_three_recipes
    highest_rating = recipe_cards.sort_by do |card|
      card.rating
    end
    best_recipes = highest_rating.map do |card|
      card.recipe
    end.reverse[0..2]
  end

  def most_recent_recipe
    recipe_cards.sort_by do |card|
      card.date
    end[0]
  end

  def safe_recipes
    problems = Allergy.all.map do |allergy|
      allergy.ingredient
    end

    safe = []
    RecipeCard.all.each do |card|
      card.recipe.ingredient.each do |ingredient|
        unless problems.include?(ingredient)
          safe << ingredient
        end
      end
    end
      binding.pry
    if problems.include?(card.ingredient)
      card.ingredient
    end
    safe
    # binding.pry
  end
end
