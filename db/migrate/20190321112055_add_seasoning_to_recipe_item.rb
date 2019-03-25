class AddSeasoningToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :seasoning, :string
  end
end
