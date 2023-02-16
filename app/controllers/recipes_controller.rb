# frozen_string_literal: true
# Recipes controller
class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  private

  def find_recipe
    @recipes = Recipe.find(params[:id])
  end
end
