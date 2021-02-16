class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
     
      t.string :body

      t.timestamps
    end
  end
end
