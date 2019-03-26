class RecipeItem < ApplicationRecord

	belongs_to :recipe

	attachment :stroke_image

end
