class FovoritesController < ApplicationController

  def create
  	recipe = Recipe.find(params[:recipe_id])
  	favorite = current_user.favorite.new(recipe_id: recipe_id)
  	favorite.save
    redirect_to recipe_path
  end

  def destroy
  	recipe = Recipe.find(params[:recipe_id])
  	favorite = current_user.favorite.find_by(recipe_id: recipe_id)
  	favorite.destroy
    redirect_to recipe_path
  end

end
