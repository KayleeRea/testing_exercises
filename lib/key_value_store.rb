class KeyValueStore

  def initialize(key, value)
    @key = key
    @value = value
  end

  def hashify
    store = {@key => @value}
  end

end