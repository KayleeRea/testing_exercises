class KeyValueStore

  def initialize
    @store = Hash.new
  end

  def add (key, value)
    @store [key]= [value]
  end

  def get(key)
    @store[key]
  end

end
