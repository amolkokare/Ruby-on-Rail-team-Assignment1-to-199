class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :userfirst_name
      t.string :last_name
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
