class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :messerge
  
  validates :content, presence: true, length: { maximum: 300 }
end
