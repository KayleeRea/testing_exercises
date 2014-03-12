require "rspec/core"
require "leap_year_calculator"

describe LeapYearCalc do

  it "Tells the user if year is a leap year" do

    year = LeapYearCalc.new

    expect(year.yes?(2000)).to eq true
  end
end