class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/db/migrate/20210203081050_create_books.rb
      t.string :Title
      t.integer :Published_year
=======
      t.string :title
      t.integer :published_year
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/db/migrate/20210203081410_create_books.rb

      t.timestamps
    end
  end
end
