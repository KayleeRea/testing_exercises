class OddEven

  def initialize(number)
    @number = number
    @array = []
  end

  def arrayit
    i = 1

    while i <= @number
      @array << i
      i += 1
    end
    @array
  end
end