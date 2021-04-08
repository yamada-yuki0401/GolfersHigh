class Course < ApplicationRecord
  has_many :scores, dependent: :destroy
end
