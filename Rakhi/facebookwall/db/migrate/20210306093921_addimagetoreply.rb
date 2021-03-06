class Addimagetoreply < ActiveRecord::Migration[6.1]
  def change
      add_column :replies, :image, :string
  end
end
