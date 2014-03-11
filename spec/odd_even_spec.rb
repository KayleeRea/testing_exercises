require "rspec/core"
require "odd_even"

describe OddEven do

  it "The class will return the numbers starting with 1 and ending with the number that it was initialized with when the run method is called" do

    list_of_numbers = OddEven.new(10)

    expected_value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    actual_value = list_of_numbers.arrayit

    expect(actual_value).to eq expected_value
  end
end
