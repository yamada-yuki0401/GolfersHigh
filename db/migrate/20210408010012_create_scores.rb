class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.integer :hole1, null: false
      t.integer :hole2, null: false
      t.integer :hole3, null: false
      t.integer :hole4, null: false
      t.integer :hole5, null: false
      t.integer :hole6, null: false
      t.integer :hole7, null: false
      t.integer :hole8, null: false
      t.integer :hole9, null: false
      t.integer :hole10, null: false
      t.integer :hole11, null: false
      t.integer :hole12, null: false
      t.integer :hole13, null: false
      t.integer :hole14, null: false
      t.integer :hole15, null: false
      t.integer :hole16, null: false
      t.integer :hole17, null: false
      t.integer :hole18, null: false

      t.timestamps
    end
  end
end
