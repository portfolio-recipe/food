class CreateRecipeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_items do |t|
    	t.integer "recipe_id"
    	t.integer "user_id"

      t.timestamps
    end
  end
end
