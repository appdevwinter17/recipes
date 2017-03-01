class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :post_id
      t.text :caption

      t.timestamps

    end
  end
end
