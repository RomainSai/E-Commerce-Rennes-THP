class RenameColumnAmountsCentsInOrder < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :amount_cents, :total_cents
  end
end
