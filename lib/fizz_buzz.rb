class FizzBuzz
  def initialize(high_limit)
    @high_limit = high_limit
  end

  def arrayify
    numbers = 1.upto(@high_limit).to_a

    i = 0

    while (i < numbers.length)

      case
        when is_multiple_of?(3, numbers[i]) && is_multiple_of?(5, numbers[i])
          numbers[i] = "FizzBuzz"
        when is_multiple_of?(3, numbers[i])
          numbers[i] = "Fizz"
        when is_multiple_of?(5, numbers[i])
          numbers[i] = "Buzz"
      end

      i += 1
    end

    numbers
  end

  def is_multiple_of?(divisible_by, number)
    number % divisible_by == 0
  end
end