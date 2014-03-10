class KeyValueStore

  def initialize(key, value)
    @key = key
    @value = value
  end

  def add
    store = {@key => @value}
  end


  #add, get, delete, get keys, clear methods
end