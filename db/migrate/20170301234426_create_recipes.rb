class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :post_id
      t.string :ingredients
      t.text :instructions
      t.string :recipe_url

      t.timestamps

    end
  end
end
