require "rspec/core"
require "numeric_calculator"

describe NumericCalculator do
 it "Returns the sum of two numbers" do

  sum_of_two_numbers = NumericCalculator.new

  expected_value = 3
  actual_value = sum_of_two_numbers.add(1,2)

  expect(actual_value).to eq expected_value
 end

  it "Returns the difference of two numbers" do

    diff_of_two_numbers = NumericCalculator.new

    expected_value = 3
    actual_value = diff_of_two_numbers.subtract(5,2)

    expect(actual_value).to eq expected_value
  end
end
