class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader #调用Image_Uploader
  belongs_to :product
end
