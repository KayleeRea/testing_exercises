class AngryDog
  def initialize(number_of_pokes)
    @number_of_pokes = number_of_pokes
  end

  def poke
    if @number_of_pokes <= 2
      "growl"
    else
      "bark"
    end
  end
end