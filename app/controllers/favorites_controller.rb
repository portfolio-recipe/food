class FavoritesController < ApplicationController

  def index
  @user = current_user
  @recipes = current_user.recipes
   @recipes = Kaminari.paginate_array(@recipes).page(params[:page]).per(9)

end
  def create
  	recipe = Recipe.find(params[:recipe_id])
  	favorite = current_user.favorites.new(recipe_id: recipe.id)
  	favorite.save
    redirect_to recipe_path(recipe)
  end

  def destroy
  	recipe = Recipe.find(params[:recipe_id])
  	favorite = current_user.favorites.find_by(recipe_id: recipe.id)
  	favorite.destroy
    redirect_to recipe_path(recipe)
  end

end
