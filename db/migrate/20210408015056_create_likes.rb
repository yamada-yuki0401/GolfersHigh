class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :messege_id, null: false

      t.timestamps
    end
  end
end
