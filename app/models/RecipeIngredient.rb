

class RecipeIngredient

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :ingredient, :recipe

  def initialize (ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

end
