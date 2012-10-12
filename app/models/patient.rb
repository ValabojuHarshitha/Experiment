class Patient < ActiveRecord::Base
  attr_accessible :name, :physician_id
  has_many :appointments
  has_many :physicians, :through => :appointments
end
