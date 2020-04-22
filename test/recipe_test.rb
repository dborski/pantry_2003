require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def setup
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Recipe, @recipe
  end


end
