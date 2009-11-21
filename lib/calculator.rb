class Calculator   
  def add(num1=0, num2=0)
    num1.to_f + num2.to_f
  end
  def divide(num1=0, num2=1)   
    denom = num2.to_f
    raise "Denominator can not be zero!" if denom == 0
    num1.to_f / denom
  end
end