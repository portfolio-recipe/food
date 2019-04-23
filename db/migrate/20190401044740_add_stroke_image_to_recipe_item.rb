class AddStrokeImageToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :stroke_image, :integer
  end
end
