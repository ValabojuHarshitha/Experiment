require 'Match'
require 'Mix'


class Sample
  
  include Match
  include Mix
  #If same method exists in both the module.rb files,it will take the method from the file which is included at last.Ex:Here i have included Mix.rb file. 
  def total
   
    @x="Total will be done"
    puts "#{@x}"
  end
  
end

samp=Sample.new
samp.total
samp.sum   #If same method exists in both the module.rb files,it will take the method from the file which is included at last.Ex:Here i have included Mix.rb file. 
Mix.mul # If you mention "Module.methodName" while declaring a method,it will work while calling that method.Otherwise,gives you an error.
