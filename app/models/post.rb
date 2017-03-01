class Post < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :title, :length => { :minimum => 0, :maximum => 100 }

  validates :user_id, :presence => true

end
