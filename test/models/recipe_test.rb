require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  test 'Validates recipe input data integrity -' do
    recipe = Recipe.new(name: 'Recipe One', rating: 1, ingredients: 'Maize-Meal', instructions: 'Something useful', tag: Tag.new(name: 'Tag'))

    assert recipe.valid?
  end
end
