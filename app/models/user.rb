class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #デバイス関係
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :scores, dependent: :destroy
  has_many :messerges, dependent: :destroy

  #いいね関係
  has_many :likes, dependent: :destroy
  def already_liked?(messerges)
    self.likes.exists?(messerges_id: messerges.id)
  end

  #フォロー関係
  has_many :following_relationships,foreign_key: "follower_id", class_name: "Relationship",  dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships,foreign_key: "following_id",class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships
  #すでにフォロー済みであればture返す
  def following?(other_user)
    self.followings.include?(other_user)
  end

  #ユーザーをフォローする
  def follow(other_user)
    self.following_relationships.create(following_id: other_user.id)
  end

  #ユーザーのフォローを解除する
  def unfollow(other_user)
    self.following_relationships.find_by(following_id: other_user.id).destroy
  end
end
