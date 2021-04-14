class AddPlayedDateToScore < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :played_date, :date
  end
end
