require "rspec/core"
require "leap_year_calculator"

describe LeapYearCalc do

  it "Tells the user if year is a leap year" do

    year = LeapYearCalc.new

    expect(year.yes?(2000)).to eq true
  end

  it "Tells the user if it is NOT a leap year" do

    year = LeapYearCalc.new

    expect(year.yes?(1999)).to eq false
  end

  it "Leap years are divisble by 400 AND 100" do

    year = LeapYearCalc.new

    expect(year.yes?(2000)).to eq true
    expect(year.yes?(1999)).to eq false
  end
end