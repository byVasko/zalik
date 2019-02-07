class Post < ApplicationRecord
	has_many :comments
	mount_uploader :image, ImageUploader
	validates :title, :body, presence: true
end
