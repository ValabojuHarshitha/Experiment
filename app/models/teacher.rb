class Teacher < ActiveRecord::Base
  attr_accessible :name, :student_id
  has_and_belongs_to_many :students
end
