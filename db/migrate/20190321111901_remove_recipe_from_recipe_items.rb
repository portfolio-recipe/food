class RemoveRecipeFromRecipeItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_items, :recipe, :string
  end
end
