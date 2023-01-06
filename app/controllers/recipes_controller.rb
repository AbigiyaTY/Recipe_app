class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def public
    @public_recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    respond_to do |format|
      format.html do
        redirect_to recipes_path, notice: 'Recipe was successfully deleted.'
      end
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      redirect_to recipes_path, notice: 'Recipe is successfully created'
    else
      render :new, alert: 'Recipe is not successfully created'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
