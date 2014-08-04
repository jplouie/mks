class Cookbook
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(new_recipe)
		recipes << new_recipe
		puts "Added a recipe to the collection: #{new_recipe.title}"
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end
