class AddPatientIdToPhysician < ActiveRecord::Migration
  def change
    add_column :physicians,:patient_id,:integer
  end
end
