require 'date'

class CookBook

  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.flat_map do |recipe|
      recipe.ingredients.flat_map  { |ingredient, quantity| ingredient.name}
    end.uniq
  end

  def highest_calorie_meal
    @recipes.max_by { |recipe| recipe.total_calories }
  end

  def date
    Date.today.strftime("%m-%d-%Y")
  end
end
