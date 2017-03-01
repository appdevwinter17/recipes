class Post < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  has_many   :recipes,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :commenters,
             :through => :comments,
             :source => :user

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

  validates :title, :length => { :minimum => 0, :maximum => 100 }

  validates :user_id, :presence => true

end
