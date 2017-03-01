class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :caption, :length => { :minimum => 0, :maximum => 300, :allow_blank => true }

end
