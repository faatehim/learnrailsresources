class Resource < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	attr_accessible :title, :url, :description, :tag
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
  	validates :tag, presence: true
  	belongs_to :user
end
