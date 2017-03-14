require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { active_time: @recipe.active_time, description: @recipe.description, gluten_free: @recipe.gluten_free, inactive_time: @recipe.inactive_time, lactose_free: @recipe.lactose_free, level_id: @recipe.level_id, name: @recipe.name, user_id: @recipe.user_id, vegan: @recipe.vegan, vegetarian: @recipe.vegetarian }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    patch :update, id: @recipe, recipe: { active_time: @recipe.active_time, description: @recipe.description, gluten_free: @recipe.gluten_free, inactive_time: @recipe.inactive_time, lactose_free: @recipe.lactose_free, level_id: @recipe.level_id, name: @recipe.name, user_id: @recipe.user_id, vegan: @recipe.vegan, vegetarian: @recipe.vegetarian }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
