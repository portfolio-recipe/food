class AddRecipeToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :recipe, :string
  end
end
