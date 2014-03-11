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
      end
      i += 1
    end
    @array
  end
end