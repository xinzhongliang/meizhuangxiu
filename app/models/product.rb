class Product < ApplicationRecord
  is_impressionable
  mount_uploader :image, ImageUploader
  belongs_to :category

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
