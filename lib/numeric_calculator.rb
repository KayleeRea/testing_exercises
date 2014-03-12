class NumericCalculator
  def intiliaze
     @memory = 6
  end
  def add(num1, num2)
    num1 + num2
  end
  def subtract(num1, num2)
    num1 - num2
  end
  def save(number)
    @memory = number
  end
  def get
    @memory
  end
end