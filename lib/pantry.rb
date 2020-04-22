class Pantry

  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def enough_ingredients_for?(recipe)
    @stock.all? do |ingredient, quantity|
      quantity >= recipe.ingredients_required[ingredient]
    end
  end
end
