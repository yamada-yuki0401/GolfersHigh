class Messerge < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :answers, dependent: :destroy
  
  def liked_by?(user)
  likes.where(user_id: user.id).exists?
  end
  attachment :image
  mount_uploader :video, VideoUploader
end
