class StringCalculator
 def add(string)
    if string.empty?
      0
    else
      sum = 0
      numbers = string.split(',')
      numbers.each do |num|
      sum += num.to_i
    end
  sum
  end
 end
end


