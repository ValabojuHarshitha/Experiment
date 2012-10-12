class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def mthd(a1="Ruby", a2="Perl")
    @x= "The programming language is #{a1}--- The programming language is #{a2}"
  end
  
  def sample(*test)
   @ar = []
   for i in 0...test.length
      @ar << "The parameters are #{test[i]}"
   end
   logger.info "----------- #{@ar.inspect}"
  end
  
  def s(name,id)
    @name= "Name is :#{name}"
    @id= "Id is :#{id}"
  end
end
