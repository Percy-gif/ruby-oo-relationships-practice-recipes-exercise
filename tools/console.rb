require_relative '../config/environment.rb'

binding.pry
require_relative '../config/environment.rb'
require 'pry'


recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")

user1 = User.new("user1")
user2 = User.new("user2")

ingredient1 = Ingredient.new("ingredient1")
ingredient2 = Ingredient.new("ingredient2")

ingredient1.add_recipe(recipe1)
ingredient1.add_recipe(recipe2)

recipe_ingredient1 = RecipeIngredient.new("recipe1", "ingredient1")
recipe_ingredient2 = RecipeIngredient.new("recipe2", "ingredient2")

user1 = User.new("user1")
user2 = User.new("user2")

user1.declare_allergy("ingredient1")
user2.declare_allergy("ingredient1")

recipe_card1 = RecipeCard.new("recipe1", "user1", "01-01-2001")
recipe_card2 = RecipeCard.new("recipe2", "user2", "01-02-2002")

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")

user1.add_recipe_card("recipe1", "01-01-2001", 1)
user1.add_recipe_card("recipe2", "02-02-2002", 2)
user2.add_recipe_card("recipe1", "01-01-2001", 5)

ingredient1 = Ingredient.new("ingredient1")
ingredient2 = Ingredient.new("ingredient2")

binding.pry
