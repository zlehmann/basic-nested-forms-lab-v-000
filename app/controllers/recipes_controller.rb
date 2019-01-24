class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :ingredient_name_1,
        :ingredient_quantity_1,
        :ingredient_name_2,
        :ingredient_quantity_2
        ]
      )
    end
end
