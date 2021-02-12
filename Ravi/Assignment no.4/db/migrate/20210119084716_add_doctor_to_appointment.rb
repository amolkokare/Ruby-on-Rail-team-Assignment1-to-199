class AddDoctorToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :doctor
  end
end
