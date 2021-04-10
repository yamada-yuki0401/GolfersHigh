class Like < ApplicationRecord
  belongs_to :messerge, dependent: :destroy
  validates_uniqueness_of :messerge_id, scope: :user_id
  has_many :likes
end
