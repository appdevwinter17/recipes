class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :post,
             :counter_cache => true

  # Indirect associations

  # Validations

end
