class RemoveTitledFromRecipeItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_items, :titled, :string
  end
end
