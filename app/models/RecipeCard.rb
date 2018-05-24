
class RecipeCard

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :recipe, :user, :date, :rating
  #(instance, instance, string, integer)

  def initialize (recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
    @@all << self
  end


end
