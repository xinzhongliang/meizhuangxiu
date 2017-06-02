class Product < ApplicationRecord
  validates :category_id, presence: true

  is_impressionable
  # mount_uploader :image, ImageUploader #上传单张图片可用，此处需要注释掉
  belongs_to :category
  has_many :comments
  has_many :photos
  accepts_nested_attributes_for :photos # 把photos 作为product的巢状属性

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :recent, -> { order('created_at DESC') }

end
