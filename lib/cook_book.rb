class CookBook

  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
      recipe.ingredients.map do |ingredient, quantity|
        ingredient.name
      end
    end.flatten.uniq
  end
end
