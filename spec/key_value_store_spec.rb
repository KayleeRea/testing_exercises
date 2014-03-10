
require "rspec/core"

require "key_value_store"

describe KeyValueStore do

  it "Allows the user to add a value stored under a key." do

  keyvalue = KeyValueStore.new("Flash", "Dog")

  expected = {"Flash" => "Dog"}

  actual = keyvalue.hashify

  expect(actual).to eq expected

  end

end
