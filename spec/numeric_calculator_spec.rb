require "rspec/core"
require "numeric_calculator"

describe NumericCalculator do
  it "Returns the sum of two numbers" do

    numbers = NumericCalculator.new

    expected_value = 3
    actual_value = numbers.add(1, 2)

    expect(actual_value).to eq expected_value
  end

  it "Returns the difference of two numbers" do

    numbers = NumericCalculator.new

    expected_value = 3
    actual_value = numbers.subtract(5, 2)

    expect(actual_value).to eq expected_value
  end

  it "User is able to save a number to the calculator" do

    numbers = NumericCalculator.new
    numbers.get

    expected_value = 6
    actual_value = numbers.save(6)

    expect(actual_value).to eq expected_value
  end
end
