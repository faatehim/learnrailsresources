class Resource < ActiveRecord::Base
	has_attached_file 
	attr_accessible :title, :url, :description
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
end
