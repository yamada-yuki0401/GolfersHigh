class Score < ApplicationRecord
  belongs_to :user
  belongs_to :course
  #スコア記入時のバリデーション
  [:course_id,:course_id, :hole1, :hole2, :hole3, :hole4, :hole5, :hole6, :hole7, :hole8, :hole9, :hole10, :hole11,:hole12, :hole13, :hole14, :hole15, :hole16, :hole17, :hole18].each do |v|
    validates v, presence: true
  end
  
  def total
    hole1 + hole2 + hole3 + hole4 + hole5 + hole6 + hole7 + hole8 + hole9 + hole10 + hole11 + hole12 + hole13 + hole14 + hole15 + hole16 + hole17 + hole18
  end
end
