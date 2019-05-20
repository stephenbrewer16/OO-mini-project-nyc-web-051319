class RecipeIngredient
  attr_accessor :ingredient, :recipe 
  @@all = []

  def self.all
    @@all
  end
end
