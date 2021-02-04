class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.belongs_to :User, null: false, foreign_key: true
      t.belong_to :user

      t.timestamps
    end
  end
end
