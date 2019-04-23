class AddStrokeImageIdToRecipeItems < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :stroke_image_id, :text
  end
end
