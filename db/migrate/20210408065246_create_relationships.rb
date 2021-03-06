class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :follow_relationships do |t|
      t.references :follower, foreign_key: { to_table: :users }
      t.references :following, foreign_key: { to_table: :users }

      t.timestamps
    end
    add_index :follow_relationships, [:follower_id, :following_id], unique: true
  end
end
