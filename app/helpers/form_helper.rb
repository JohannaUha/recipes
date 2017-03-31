module FormHelper
  def setup_recipe(recipe)
    1.times { recipe.ingredients.build }
    recipe
  end
end