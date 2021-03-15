class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :ename
      t.string :designation

      t.timestamps
    end
  end
end
