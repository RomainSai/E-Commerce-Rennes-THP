class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :item_sku
      t.monetize :amount, currency: { present: false }

      t.timestamps
    end
  end
end
