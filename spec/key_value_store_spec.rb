require "rspec/core"
require "key_value_store"

describe KeyValueStore do

  it "Allows the user to add a value stored under a key." do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")

    expected_value = ["Dog"]
    actual_value = keyvalue.get("Flash")

    expect(actual_value).to eq expected_value

  end

  it "Allows user to delete a single key" do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")

    keyvalue.delete('Flash')

    expected_value = nil
    actual_value = keyvalue.delete("Flash")

    expect(actual_value).to eq expected_value
    end
end
