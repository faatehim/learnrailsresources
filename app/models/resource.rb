class Resource < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
end
