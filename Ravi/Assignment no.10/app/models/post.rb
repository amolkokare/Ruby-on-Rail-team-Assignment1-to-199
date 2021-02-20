class Post < ApplicationRecord
  has_many :replies, dependent: :destroy
  validates :title, :body, presence: true
  mount_uploader :image,ImageUploader
end
