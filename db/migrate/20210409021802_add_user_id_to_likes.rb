class AddUserIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :user_id, :integer
    change_column :likes, :user_id, :integer, null: false
  end
end
