require_relative '../config/environment.rb'

##Users

aisha = User.new("Aisha")
raz = User.new("Raz")
eric = User.new("Eric")
michael = User.new("Michael")

##Ingredients

cocoa = Ingredient.new("Cocoa")
milk = Ingredient.new("Milk")
flour = Ingredient.new("Flour")
sugar = Ingredient.new("Sugar")
walnut = Ingredient.new("Walnuts")
eggs = Ingredient.new("Eggs")
cheese = Ingredient.new("Cheese")
sauce = Ingredient.new("Tomato sauce")
beef = Ingredient.new("Beef")
buns = Ingredient.new("Buns")

#Allergens

eric_allergen = Allergen.new(eric , walnut)
aisha_allergen = Allergen.new(aisha, walnut)
michael_allergen = Allergen.new(michael, walnut)
raz_allergen = Allergen.new(raz, eggs)
aisha_allergen2 = Allergen.new(aisha, milk)
eric2_allergen = Allergen.new(eric, beef)

# Recipes
cake = Recipe.new("Chocolate cake")
pizza = Recipe.new("Pizza")
burger = Recipe.new("Burger")

# RecipeCards
rc = RecipeCard.new(cake, aisha, "23-05-2018", 7)
rc2 = RecipeCard.new(pizza, raz, "23-05-2018", 4)
rc3 = RecipeCard.new(burger, eric, "23-05-2018", 8)
rc4 = RecipeCard.new(burger, michael, "23-05-2018", 6)
rc5 = RecipeCard.new(burger, aisha, "21-05-2018", 10)
rc6 = RecipeCard.new(pizza, eric, "22-05-2018", 9)

cake_ing = [cocoa, milk, flour, sugar, walnut, eggs]
pizza_ing = [flour, cheese, sauce]
burger_ing = [beef, buns, cheese]

# RecipeIngredients
cake.add_ingredients(cake_ing)
pizza.add_ingredients(pizza_ing)
burger.add_ingredients(burger_ing)





binding.pry
