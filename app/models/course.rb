class Course < ApplicationRecord
  has_many :scores, dependent: :destroy
  def self.search(search)
      if search
        Course.where(['golfCourseName LIKE ?', "%#{search}%"])
      else
        Course.all
      end
  end
end
