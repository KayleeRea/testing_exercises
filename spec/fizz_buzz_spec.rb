require 'rspec/core'

require "fizz_buzz"

describe FizzBuzz do
  it "replaces multiples of 3 with Fizz, multiples of 5 with Buzz, multiples of 15 with FizzBuzz" do
    fizzbuzz = FizzBuzz.new(15)

    expected = [
      1, 2, 'Fizz', 4, 'Buzz',
      'Fizz', 7, 8, 'Fizz', 'Buzz',
      11, 'Fizz', 13, 14, 'FizzBuzz',
    ]

    actual = fizzbuzz.arrayify

    expect(actual).to eq expected
  end
end