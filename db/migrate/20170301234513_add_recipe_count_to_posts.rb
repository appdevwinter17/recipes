class AddRecipeCountToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :recipes_count, :integer
  end
end
