

class Ingredient
  @@all = []
  def self.all
    @@all
  end

  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def get_allergen
    #returns allergens instances where self is true
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    #returns instance of ingredient wich has most users
    ingredient_hash = Hash.new(0)

    Allergen.all.each do |allergen|
      ingredient_hash[allergen.ingredient] += 1
    end

    ingredient_hash.sort_by {|ingredient, count| count}.last[0]

  end

end
