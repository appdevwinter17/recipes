class PhotosOfRecipe < ApplicationRecord
  # Direct associations

  belongs_to :recipe,
             :counter_cache => :recipe_photos_count

  # Indirect associations

  # Validations

end
