class AddUserIdToRecipeItem < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_items, :user_id, :integer
  end
end
