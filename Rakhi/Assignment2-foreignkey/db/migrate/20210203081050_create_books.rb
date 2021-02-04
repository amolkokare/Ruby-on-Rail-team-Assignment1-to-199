class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :Title
      t.integer :Published_year

      t.timestamps
    end
  end
end
