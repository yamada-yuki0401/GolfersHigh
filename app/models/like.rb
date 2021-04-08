class Like < ApplicationRecord
  belongs_to :messerges, dependent: :destroy
end
