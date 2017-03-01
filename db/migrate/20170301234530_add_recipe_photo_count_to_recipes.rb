class AddRecipePhotoCountToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :recipe_photos_count, :integer
  end
end
