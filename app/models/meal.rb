class Meal < ApplicationRecord
	mount_uploader :avatar, AvatarUploader

	searchkick


  	has_many :reviews
end
