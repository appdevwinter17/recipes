class User < ApplicationRecord
  # Direct associations

  has_one    :profile,
             :dependent => :destroy

  has_many   :friend_requests_received,
             :class_name => "FriendRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :friend_requests_sent,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :posts,
             :dependent => :destroy

  # Indirect associations

  has_many   :liked_posts,
             :through => :likes,
             :source => :post

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
