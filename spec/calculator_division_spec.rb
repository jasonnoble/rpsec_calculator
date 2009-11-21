require 'spec'
require 'lib/calculator'

describe Calculator do
  # it "should be true" do
  #   'firetruck'.should == 'police car'   
  # end     
  before do
    @my_calculator = Calculator.new 
  end
                            
  it "should be a Calculator class" do
    @my_calculator.should be_a(Calculator)
  end         
  
  it "should divide two numbers" do
    @my_calculator.divide(10, 5).should == 2
    @my_calculator.divide(10, 5).should_not == 6
  end  
  
  it "should divide a postive and a negative number" do       
    @my_calculator.divide(10, -5).should == -2
    @my_calculator.divide(10, -5).should_not == 5
  end
  
  it "should divide one number" do
    @my_calculator.divide(3).should == 3
  end               
  
  it "should divide no numbers" do
    @my_calculator.divide.should == 0
  end                             
  
  it "should handle good strings appropriately" do
    @my_calculator.divide('10', '2').should == 5
  end
  
  it "should handle bad strings appropriately" do
    lambda {@my_calculator.divide('fire', 'truck')}.should raise_error
  end                                              
  
  it "should handle one bad string" do
    lambda {@my_calculator.divide(5, 'fire')}.should raise_error
  end  
  
  it "should divide negative value and bad string" do
    lambda {@my_calculator.divide(-3, 'fire')}.should raise_error
  end                                          
  
  it "should divide decimal numbers" do
    @my_calculator.divide(10.0, 2.0).should == 5
    @my_calculator.divide(10.2, 2.0).should == 5.1
  end
  
end