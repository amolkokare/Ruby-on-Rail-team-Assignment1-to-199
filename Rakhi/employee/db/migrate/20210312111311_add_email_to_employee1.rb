class AddEmailToEmployee1 < ActiveRecord::Migration[6.1]
  def change
    add_column :employee1s, :email, :string
  end
end
