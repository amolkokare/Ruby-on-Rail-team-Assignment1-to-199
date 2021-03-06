class Reply < ApplicationRecord
  belongs_to :post
  validates :name, :body, presence: true
  mount_uploader :image,ImageUploader
end
