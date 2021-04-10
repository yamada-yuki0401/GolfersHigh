class AddImageIdToMesserges < ActiveRecord::Migration[5.2]
  def change
    add_column :messerges, :image_id, :string
  end
end
