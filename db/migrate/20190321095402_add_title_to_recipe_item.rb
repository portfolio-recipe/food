class AddTitleToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :titled, :string
  end
end
