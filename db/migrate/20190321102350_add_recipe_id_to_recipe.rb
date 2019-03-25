class AddRecipeIdToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :recipe, :string
  end
end
