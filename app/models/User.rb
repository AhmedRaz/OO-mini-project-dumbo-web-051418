

class User
  @@all = []
  def self.all
    @@all
  end

  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def recipe_card
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipe
    self.recipe_card.map {|recipe_card| recipe_card.recipe}
  end

# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    # should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    Allergen.new(self, ingredient)
  end

  def allergens
  # should return all of the ingredients this user is allergic to
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
  # should return the top three highest rated recipes for this user.

    self.recipe_card.sort {|a,b| b.rating <=> a.rating}

  end

  def most_recent_recipe
    self.recipe_card.sort {|a,b| b.date <=> a.date}
  end

end
