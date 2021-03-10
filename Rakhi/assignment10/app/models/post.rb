class Post < ApplicationRecord
  has_many :replies, dependent: :destroy
  validates :title, :body, presence: true
  mount_uploader :image,ImageUploader

  after_save :enqueue_image

  def image_name
    File.basename(image.path || image.filename) if image
  end

  def enqueue_image
    ImageWorker.perform_async(id, key) if key.present?
  end

  class ImageWorker
    include sidekiq::Worker

    def perform(id, key)
     post = Post.find(id)
     post.key = key
     post.remote_image_url = painting.image.direct_fog_url(with_path: true)
     post.save!
     post.update_column(:image_processed, true)
   end
 end
end
