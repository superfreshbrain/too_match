class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  mount_uploader :image, ImageUploader
end
