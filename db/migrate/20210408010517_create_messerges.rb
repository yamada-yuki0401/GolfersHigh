class CreateMesserges < ActiveRecord::Migration[5.2]
  def change
    create_table :messerges do |t|
      t.integer :user_id, null: false
      t.text :comment, null: false
      t.string :video
      t.string :image

      t.timestamps
    end
  end
end
