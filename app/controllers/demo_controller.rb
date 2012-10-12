class DemoController < ApplicationController
  
  def test
    logger.info "---------- here"
   puts "You are in the method"
   logger.info "---------- here---1 "
   yield
   logger.info "---------- here---1 "
   puts "You are again back to the method"
   yield
   redirect_to :action => 'blck'
  end
  #test {puts "You are in the block"}
  
  def blck
    sample("Zara", "6", "F")
    yield
    sample("Mac", "36", "M", "MCA")
    s("harsha",8)
    mthd("C", "C++")
  end
  
  #blck { puts"in yield block" }
  
end
