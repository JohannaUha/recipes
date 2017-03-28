class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @levels = Level.all
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.create params.require(:recipe).permit(:name, :level_id, :active_time, :inactive_time, :vegetarian, :vegan, :lactose_free, :gluten_free, :description)

    if current_user.nil?
      redirect_to signin_path, notice:'You should be signed in'
    elsif @recipe.save
      current_user.recipes << @recipe
      @recipe.user_id = current_user.id
      redirect_to recipe_path @recipe, notice: 'Recipe was succesfully created.'
    else
      @recipes = Recipe.all
      render :new
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :user_id, :level_id, :active_time, :inactive_time, :vegetarian, :vegan, :lactose_free, :gluten_free, :description, ingredients_attributes: [:id, :amount, :unit, :name])
    end
end
