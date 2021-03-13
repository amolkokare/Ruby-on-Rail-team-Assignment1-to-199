class CreateEmployee1s < ActiveRecord::Migration[6.1]
  def change
    create_table :employee1s do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end
