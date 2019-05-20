require 'date'

class RecipeCard
  attr_accessor :recipe, :date, :rating, :user, :ingredient
  @@all = []

  def initialize(recipe, rating, user)
    @recipe = recipe
    @date = Time.now.strftime("%F %H:%M:%S")
    @rating = rating
    @user = user

    @@all << self
  end


  def self.all
    @@all
  end

end
