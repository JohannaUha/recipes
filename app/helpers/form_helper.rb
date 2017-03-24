module FormHelper
  def setup_recipe(recipe)
    recipe.ingredients ||= Ingredient.new
    recipe
  end
end