class Resource < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	attr_accessible :title, :url, :description
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
  	belongs_to :user
end
