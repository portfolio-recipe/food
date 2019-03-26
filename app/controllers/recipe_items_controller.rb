class RecipeItemsController < ApplicationController

  def new
  	@recipe_item = Recipe_item.new
  end

private

  def recipe_item
  	prams.reqire(:recipe_item).permit(:seasoning, :stloke_image)

end
