class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #デバイス関係
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true

  has_many :scores, dependent: :destroy
  has_many :messerges, dependent: :destroy

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
