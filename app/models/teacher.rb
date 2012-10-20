class Teacher < ActiveRecord::Base
  attr_accessible :address, :contact, :name, :organization, :subject ,:student_id
 
end
