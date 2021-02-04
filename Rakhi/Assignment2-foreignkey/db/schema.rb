# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/db/schema.rb
ActiveRecord::Schema.define(version: 2021_02_03_083901) do
=======
ActiveRecord::Schema.define(version: 2021_02_03_081937) do
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/db/schema.rb

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/db/schema.rb
    t.string "Title"
    t.integer "Published_year"
=======
    t.string "title"
    t.integer "published_year"
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/db/schema.rb
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "author_id"
  end

end
