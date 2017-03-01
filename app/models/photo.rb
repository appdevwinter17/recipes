class Photo < ApplicationRecord
  # Direct associations

  belongs_to :post,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :caption, :length => { :minimum => 0, :maximum => 300, :allow_blank => true }

end
