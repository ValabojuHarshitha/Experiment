class Student < ActiveRecord::Base
  attr_accessible :add, :name, :teacher_id
  has_and_belongs_to_many :teachers
end
