class StringCalculator
 def add(str)
    sum = 0
    @array_of_numbers = str.split(',')
    @array_of_numbers.each do |num|
    sum += num.to_i
  end
  sum
  end
end


