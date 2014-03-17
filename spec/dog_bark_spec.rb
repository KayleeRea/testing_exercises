require "dog_bark.rb"

describe AngryDog do

  it "the dog growls when poked two times or less" do
    dog = AngryDog.new(2)

    expect(dog.poke).to eq("growl")
  end
  it "the dog barks when poked more than three times" do
    dog = AngryDog.new(4)

    expect(dog.poke).to eq("bark")
  end
end