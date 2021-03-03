class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :order
      t.integer :quantity
      t.string :item
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
