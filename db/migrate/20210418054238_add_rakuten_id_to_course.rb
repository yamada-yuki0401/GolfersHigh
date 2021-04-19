class AddRakutenIdToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :rakuten_id, :integer
  end
end
