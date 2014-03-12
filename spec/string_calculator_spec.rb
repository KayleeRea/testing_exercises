require "rspec/core"
require "string_calculator"

describe StringCalculator do

  it "The add method returns 0 if an empty string is passed" do
    string = StringCalculator.new

      expected_value = 0

      expect(string.add("")).to eq expected_value
    end
  end
