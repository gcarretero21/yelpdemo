class Meal < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
  	has_many :reviews
end
