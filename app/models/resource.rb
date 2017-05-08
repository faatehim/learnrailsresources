class Resource < ActiveRecord::Base
	mount_uploader :image, ImageUploader
  mount_uploader :upload, ImageUploader
	validates :title, presence: true, uniqueness: true
  	validates :url, presence: true
  	validates :description, presence: true
  	validates :tag, presence: true
  	belongs_to :user
  	acts_as_votable
  	validates_processing_of :image
    validate :image_size_validation
      private
      def image_size_validation
        errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
      end
end
