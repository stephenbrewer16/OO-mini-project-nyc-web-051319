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

flour = Ingredient.new
salt = Ingredient.new
pepper = Ingredient.new

pizza.add_ingredients([salt])
burger.add_ingredients([flour, salt])
sushi.add_ingredients([pepper])
bagel.add_ingredients([pepper])

yeast = Allergy.new(flour, mendel)
salty_1 = Allergy.new(salt, mendel)
salty_2 = Allergy.new(salt, stephen)

burger_c = RecipeCard.new(burger, 10, mendel)
burger_c_2 = RecipeCard.new(burger, 10, stephen)
burger_c_3 = RecipeCard.new(burger, 10, stephen)
pizza_c = RecipeCard.new(pizza, 7, mendel)
pizza_c_1 = RecipeCard.new(pizza, 3, mendel)
pizza_c_2 = RecipeCard.new(pizza, 2, mendel)
pizza_c_3 = RecipeCard.new(pizza, 4, mendel)
pizza_c_4 = RecipeCard.new(pizza, 8, mendel)
bagel_c = RecipeCard.new(bagel, 9, mendel)
pizza_now = RecipeCard.new(pizza, 19, mendel)
sandwich_c = RecipeCard.new(sandwich, 2, john)
sushi_c = RecipeCard.new(sushi, 7, sam)

binding.pry
