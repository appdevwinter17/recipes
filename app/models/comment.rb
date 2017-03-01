class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :comment, :length => { :minimum => 0, :maximum => 400 }

  validates :user_id, :presence => true

end
