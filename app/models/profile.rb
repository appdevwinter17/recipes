class Profile < ApplicationRecord
  mount_uploader :user_photo, UserPhotoUploader

  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

end
