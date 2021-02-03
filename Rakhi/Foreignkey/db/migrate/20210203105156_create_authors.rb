class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :Author_name
      t.integer :Birth_of_Year

      t.timestamps
    end
  end
end
