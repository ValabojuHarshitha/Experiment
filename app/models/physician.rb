class Physician < ActiveRecord::Base
  attr_accessible :contact, :name ,:patient_id
  has_many :appointments
  has_many :patients, :through => :appointments
end
