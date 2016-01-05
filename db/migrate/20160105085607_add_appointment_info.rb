class AddAppointmentInfo < ActiveRecord::Migration
  def change
    add_column :practitioners, :appointment_info, :string
  end
end
