require "rspec/core"
require "key_value_store"

describe KeyValueStore do

  it "Allows the user to get a value stored under a key." do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")

    expect(actual_value = keyvalue.get("Flash")).to eq expected_value = "Dog"

  end

  it "Allows user to delete and add a single key" do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")

    keyvalue.delete('Flash')

    expect(actual_value = keyvalue.delete('Flash')).to eq expected_value = nil
  end

  it "Allows user to add keys to the store" do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")
    keyvalue.add("Fluffy", "Cat")
    keyvalue.add("Kaylee", "Person")

    expect(actual_value = keyvalue.return).to eq expected_value = {"Flash" => "Dog",
                                                                   "Fluffy" => "Cat",
                                                                    "Kaylee" => "Person"}
  end

  it"Returns a list of keys from the store" do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")
    keyvalue.add("Fluffy", "Cat")
    keyvalue.add("Kaylee", "Person")


    expect(actual_value = keyvalue.get_keys).to eq expected_value = ["Flash", "Fluffy", "Kaylee"]
  end

  it "A user can clear a store which includes the key and the value" do
    keyvalue = KeyValueStore.new

    keyvalue.add("Flash", "Dog")
    keyvalue.add("Fluffy", "Cat")
    keyvalue.add("Kaylee", "Person")

    expect(actual_value = keyvalue.clear).to eq expected_value = {}
   end
end
