require_relative '../config/environment.rb'


mendel = User.new("Mendel")
stephen = User.new("Stephen")
tom = User.new("Tom")
john = User.new("John")
sam = User.new("Sam")

burger = Recipe.new("burger")
pizza = Recipe.new("pizza")
bagel = Recipe.new("bagel")
sandwich = Recipe.new("sandwich")
sushi = Recipe.new("sushi")

burger_c = RecipeCard.new(burger, "May 15", 10, stephen)
pizza_c = RecipeCard.new(pizza, "May 15", 9, mendel)
bagel_c = RecipeCard.new(bagel, "May 15", 5, tom)
sandwich_c = RecipeCard.new(sandwich, "May 15", 2, john)
sushi_c = RecipeCard.new(sushi, "May 15", 7, sam)

binding.pry
