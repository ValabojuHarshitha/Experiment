class Parent < ActiveRecord::Base
  attr_accessible :address, :contact, :exp, :name, :occupation
   validates :occupation ,:presence=>true
   before_validation :check_name
   after_validation :check_contact
   after_save :test_after
   before_create :set_before_create
   before_save :update_name
   
   
 def check_name
   if self.name==""
     logger.info"====== before validation == "
     self.name="harsha"
   else
     logger.info"====== before validation else== "
     self.name=name
     logger.info"====== before validation else #{self.name.inspect}== "
   end
 end
 
 def check_contact
   if !self.contact.nil?
     if self.contact.to_i.size >= 10
       logger.info"====== after validation if == "
       self.contact=contact.to_i
     else
       logger.info"====== after validation else #{self.contact.to_i.inspect}== "
       self.contact=" "
     end
   end
 end
 
 def update_name
   logger.info"====== before save #{self.name.inspect}=====#{self.occupation.inspect}== #{self.contact.to_i.inspect}===== "
   self.name="prabhas"
 end
 
 def test_after
   self.name=name
   logger.info "-----------after save #{self.name.inspect}====#{self.occupation.inspect}== #{self.contact.to_i.inspect}==="
 end
 
 
 def set_before_create
   logger.info "============== before create #{self.occupation.inspect}== #{self.contact.to_i.inspect}======="
   self.name="upendar"
   self.address="hanamkonda"
   #self.occupation="lecturer"
 end
 
 
end
