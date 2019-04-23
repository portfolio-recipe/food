class RemoveStrokeImageFromRecipeItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_items, :stroke_image, :integer
  end
end
