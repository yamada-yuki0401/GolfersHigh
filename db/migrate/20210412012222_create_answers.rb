class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.references :user, foreign_key: true
      t.references :messerge, foreign_key: true

      t.timestamps
    end
  end
end
