class Car

  @@default_colour = 'red'

  def initialize
    @colour = @@default_colour
  end

  # READER / GETTER
  def colour
    @colour
  end

  # WRITER / SETTER
  def colour=(colour)
    @colour = colour
  end

  def paint(new_colour)
    @colour = new_colour
  end

end
