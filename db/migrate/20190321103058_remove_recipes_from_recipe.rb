class RemoveRecipesFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :recipe, :string
  end
end
