
class Allergen
  @@all = []
  def self.all
    @@all
  end

  attr_accessor :user, :ingredient

  def initialize (user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.allergens
    #returns a list of ingredients that are allergens
    self.all.map {|item| item.ingredient}.uniq
  end

end
