require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def setup
    @pantry = Pantry.new

    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_can_stock_ingredients
    assert_equal ({}), @pantry.stock

    @pantry.restock(@ingredient1, 5)

    expected = {@ingredient1 => 5}
    assert_equal expected, @pantry.stock

    @pantry.restock(@ingredient1, 10)

    expected = {@ingredient1 => 15}
    assert_equal expected, @pantry.stock
  end
end
