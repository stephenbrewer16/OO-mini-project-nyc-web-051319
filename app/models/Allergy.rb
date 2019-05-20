class Allergy
  attr_accessor :user, :ingredient
  @@all = []

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
  end

  def self.all
    @@all
  end
end
