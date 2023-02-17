# frozen_string_literal: true
# Recipes controller
class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destory]

  def index
  end

  def show
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title ,:descriptions)
  end

  def find_recipe
    @recipes = Recipe.find(params[:id])
  end
end
