class Recipe < ApplicationRecord
  # Direct associations

  has_many   :recipe_photos,
             :class_name => "PhotosOfRecipe",
             :dependent => :destroy

  belongs_to :post,
             :counter_cache => true

  # Indirect associations

  # Validations

end
