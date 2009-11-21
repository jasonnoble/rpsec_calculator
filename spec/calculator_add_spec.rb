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
  
  it "should add two numbers" do
    @my_calculator.add(2, 3).should == 5
    @my_calculator.add(2, 3).should_not == 6
  end  
  
  it "should add a postive and a negative number" do       
    @my_calculator.add(2, -3).should == -1
    @my_calculator.add(2, -3).should_not == 5
  end
  
  it "should add one number" do
    @my_calculator.add(3).should == 3
  end               
  
  it "should add no numbers" do
    @my_calculator.add.should == 0
  end                             
  
  it "should handle good strings appropriately" do
    @my_calculator.add('1', '2').should == 3
  end
  
  it "should handle bad strings appropriately" do
    @my_calculator.add('fire', 'truck').should == 0
  end                                              
  
  it "should handle one bad string" do
    @my_calculator.add(5, 'fire').should == 5
  end  
  
  it "should add negative value and bad string" do
    @my_calculator.add(-3, 'fire').should == -3
  end                                          
  
  it "should add decimal numbers" do
    @my_calculator.add(3.0, 5.0).should == 8
    @my_calculator.add(3.1, 5.0).should == 8.1
  end
  
end