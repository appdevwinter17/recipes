class AddPhotoCountToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :photos_count, :integer
  end
end
