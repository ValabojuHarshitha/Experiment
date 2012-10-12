class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :place

      t.timestamps
    end
  end
end
