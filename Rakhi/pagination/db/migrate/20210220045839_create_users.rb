class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
    add_index :users, :first_name
  add_index :users, :last_name
  end
end
