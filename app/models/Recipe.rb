

class Recipe
  @@all = []
  def self.all
    @@all
  end

  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def add_ingredients(ingredient_instances)
    ingredient_instances.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

  def ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def allergens
    self.ingredients.select do |recipe_ingredient|
      Allergen.allergens.include?(recipe_ingredient.ingredient)
    end
  end

end
