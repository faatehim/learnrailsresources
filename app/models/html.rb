class Html < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
  	validates :tag, presence: true
    validates :shortdescription, presence: true
end
