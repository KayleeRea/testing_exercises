class OddEven

  def initialize(number)
    @number = number
    @array = []
  end

  def arrayit
    i = 1

    while i <= @number
      @array << i

      if (i%2 == 0)
        @array[i-1] = "even"
      elsif (i%2 == 1)
        @array[i-1] = "odd"
      end
      i += 1
    end
    @array
  end
end