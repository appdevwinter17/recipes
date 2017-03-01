class CreatePhotosOfRecipes < ActiveRecord::Migration
  def change
    create_table :photos_of_recipes do |t|
      t.integer :recipe_id

      t.timestamps

    end
  end
end
