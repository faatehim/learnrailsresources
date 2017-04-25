class Resource < ActiveRecord::Base
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}, :path => ":rails_root/public/:filename", :url => "/system/:class/:attachement/:id/:basename_:style.:extension"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] 
	attr_accessible :title, :url, :description
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
  	belongs_to :user
end
