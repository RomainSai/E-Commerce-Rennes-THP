class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.decimal :price, precision: 10, scale: 2
      t.string :title
      t.string :image_url
      t.text :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
