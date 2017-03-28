module FormHelper
  def setup_recipe(recipe)
    7.times { recipe.ingredients.build }
    recipe
  end
end