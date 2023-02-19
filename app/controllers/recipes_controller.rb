# frozen_string_literal: true
# Recipes controller
class RecipesController < ApplicationController
  before_action :find_recipe, only: %i[show edit update destroy]

  def index
    @recipe = Recipe.all.order('created_at DESC')
  end

  def show
  end

  def new
    @recipe = Recipe.new
    @tags = Tag.all
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      tag_ids = params[:recipe][:tag_ids]
      tag_ids.each do |tag_id|
        recipe_tag = RecipeTag.new(recipe_id: @recipe.id, tag_id: tag_id)
        recipe_tag.save
      end
      redirect_to @recipe, notice: 'New Recipe successfully created'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe updated'
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: 'Recipe deleted'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, tag_ids: [])
  end

  def find_recipe
    @recipes = Recipe.find(params[:id])
  end
end
