class CreateRevenues < ActiveRecord::Migration[6.1]
  def change
    create_table :revenues do |t|
      t.string :item
      t.integer :quantity
      t.integer :totalsales

      t.timestamps
    end
  end
end
