class Like < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :post,
             :counter_cache => true

  # Indirect associations

  # Validations

end
