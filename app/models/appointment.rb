class Appointment < ActiveRecord::Base
  attr_accessible :place,:physician_id,:patient_id
  belongs_to :physician
  belongs_to :patient
end
