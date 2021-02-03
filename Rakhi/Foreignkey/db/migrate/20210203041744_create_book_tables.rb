class CreateBookTables < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tables do |t|
      t.string :Book_name
      t.integer :Published_year

      t.timestamps
    end
  end
end
