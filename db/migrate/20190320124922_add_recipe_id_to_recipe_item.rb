class AddRecipeIdToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :recipe_id, :integer
  end
end
