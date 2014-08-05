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

	def recipe_titles
		recipes.each do |recipe|
			puts "#{recipe.title}"
		end
	end

	def recipe_ingredients
		recipes.each do |recipe|
			puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
		end
	end

	def print_cookbook
		recipes.each do |recipe|
			puts "* * * #{recipe.title} * * *"
			puts "Ingredients: #{recipe.ingredients.join(", ")}"
			puts "Steps:"
			recipe.steps.length.times do |number|
				puts "#{number + 1}. #{recipe.steps[number]}"
			end
		end
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "#{title}. Ingredients needed: #{ingredients.join(", ")}."
		puts "Steps:"
		steps.length.times do |number|
			puts "#{number + 1}. #{steps[number]}"
		end
	end
end
