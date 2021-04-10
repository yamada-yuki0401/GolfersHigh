class RenameMessegeColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :messege_id, :messerge_id
  end
end
