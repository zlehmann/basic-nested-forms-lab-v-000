class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'sugar')
    @recipe.ingredients.build(ingredient_type: 'milk')
  end

  def create
  end
end
