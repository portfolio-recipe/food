class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.text :recipe_image_id
    	t.text :recipe_movie_id
    	t.integer :user_id
      t.timestamps
    end
  end
end
