class CreateRevenues < ActiveRecord::Migration[6.1]
  def change
    create_table :revenues do |t|
      t.string :item
      t.integer :total_sales
      t.integer :quantity

      t.timestamps
    end
  end
end
