class RemoveColumnStateFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :state, :string
    remove_column :orders, :item_sku, :string
  end
end
