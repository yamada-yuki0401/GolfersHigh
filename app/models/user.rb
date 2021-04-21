class User < ApplicationRecord
  #デバイス関係
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }
  
  #スコア関係
  has_many :scores, dependent: :destroy
  def total
    hole1 + hole2 + hole3 + hole4 + hole5 + hole6 + hole7 + hole8 + hole9 + hole10 + hole11 + hole12 + hole13 + hole14 + hole15 + hole16 + hole17 + hole18
  end
  
  has_many :messerges, foreign_key: :user_id, dependent: :destroy
  has_many :answers, foreign_key: :user_id, dependent: :destroy

  #いいね関係
  has_many :like_messerges, through: :likes, source: :messerge


  #フォロー関係
  has_many :following_relationships,foreign_key: "follower_id", class_name: "FollowRelationship",  dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships,foreign_key: "following_id",class_name: "FollowRelationship", dependent: :destroy
  has_many :followers, through: :follower_relationships
  
  # ユーザーをフォローする
  def follow(followed_user_id)
    FollowRelationship.create(following_id: followed_user_id, follower_id: self.id)
  end

  # ユーザーのフォローを外す
  def unfollow(followed_user_id)
    FollowRelationship.find_by(following_id: followed_user_id, follower_id: self.id).destroy
  end

  # フォローしていればtrueを返す
  def following?(followed_user_id)
    FollowRelationship.find_by(following_id: followed_user_id, follower_id: self.id).present?
  end
end