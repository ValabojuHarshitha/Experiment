module Mix
  def sum
    @x= "sum will be done here"
    puts "#{@x}"
  end
  
  def add
    @x= "sum will be done here"
    puts "#{@x}"
  end
end
module Match
  def mul
     @x="Multiplication will be done here"
     puts "#{@x}"
  end
  
  def div
     @x="Division will be done here"
     puts "#{@x}"
  end
end
class Demo
  #require 'Mix.rb'
  #require 'Match.rb'
  include Mix
  include Match
  def total
    
    @x="Total will be done"
    puts "#{@x}"
  end
  
  #t.add
end
t=Demo.new
t.total
t.add
t.sum
t.div
t.mul