class PublicRecipesController < ApplicationController
  # def index
  #   @recipes = Recipe.where(public: true).order(created_at: :desc)
  # end
  def index
    @recipes = Recipe.where(public: true).order(id: :desc)
  end
end
