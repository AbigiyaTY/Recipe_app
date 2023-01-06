class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def new
    @recipe_food = RecipeFood.new
  end

  def edit
    @recipe_food
  end

  def create
    @recipe_food = RecipeFood.create(recipe_food_params)
    @recipe_food.recipe_id = params[:recipe_id]
    @recipe_food.food_id = params[:food_id]
    @recipe_food.save
    redirect_to recipes_path(id: :recipe_id), notice: 'Recipe Food was successfully created.'
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe_food.update
      flash[:success] = 'Recipe food was successfully updated.'
      redirect_to recipe_recipe_foods_path(id: :recipe_id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe_food = RecipeFood.find_by(id: params[:id])
    if @recipe_food.destroy
      redirect_to recipe_recipe_foods_path(id: :recipe_id)
      flash[:success] = 'Recipe of food is successfully removed.'
    else
      flash.now[:error] = 'Recipe food is not removed'
    end
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :recipe_id, :quantity)
  end
end
