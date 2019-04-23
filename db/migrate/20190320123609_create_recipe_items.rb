class CreateRecipeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_items, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|


      t.timestamps
    end
  end
end
