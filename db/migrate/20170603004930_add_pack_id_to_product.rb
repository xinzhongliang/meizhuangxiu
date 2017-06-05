class AddPackIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :pack_id, :integer
  end
end
