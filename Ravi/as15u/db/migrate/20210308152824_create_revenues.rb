class CreateRevenues < ActiveRecord::Migration[6.1]
  def change
    create_table :revenues do |t|
      t.string :item
      t.integer :quantity
      t.integer :price_per_item

      t.timestamps
    end
  end
end
