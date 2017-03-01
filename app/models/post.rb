class Post < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :length => { :minimum => 0, :maximum => 100 }

  validates :user_id, :presence => true

end
