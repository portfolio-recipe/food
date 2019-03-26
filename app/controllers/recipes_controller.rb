class RecipesController < ApplicationController
  
   def index
  	 @recipes = Recipe.all
  	 @search = Recipe.search(params[:q])
  render "index"
   end

  def search
  @recipes = Recipe.search(params[:search])
  render "top"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
  	@recipe = Recipe.new
  	@recipe.recipe_items.build
  end

  def top
  	@recipes = Recipe.page(params[:page]).per(9)
  end

  def create
  	@recipe = Recipe.new(recipe_params)
  	#binding.pry
  	@recipe.user_id = current_user.id
  	@recipe.save
  	redirect_to root_path
  end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def update
  	recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to root_path
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

private

  def recipe_params
 	params.require(:recipe).permit(:title, :recipe_image, recipe_items_attributes:[:id, :seasoning, :stroke_image, :_destroy][])
  end
end
