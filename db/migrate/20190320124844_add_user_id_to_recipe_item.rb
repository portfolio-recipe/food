class AddUserIdToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :User_id, :integer
  end
end
