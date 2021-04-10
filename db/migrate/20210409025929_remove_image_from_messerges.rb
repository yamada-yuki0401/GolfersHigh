class RemoveImageFromMesserges < ActiveRecord::Migration[5.2]
  def change
    remove_column :messerges, :image, :string
  end
end
