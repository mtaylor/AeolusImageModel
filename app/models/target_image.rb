class TargetImage < ActiveRecord::Base
  belongs_to :image_version
  has_many :provider_images
  belongs_to :template
end