require_relative 'powers'

class Superhero

  MAX_HEALTH             = 100
  DEFAULT_POWER          = 10
  DEFAULT_HEALING_FACTOR = 10
  DEFAULT_SPEED          = 0
  DEFAULT_ALTITUDE       = 0

  def initialize(name)
    @name = name

    @health         = MAX_HEALTH
    @power          = DEFAULT_POWER
    @healing_factor = DEFAULT_HEALING_FACTOR
    @speed          = DEFAULT_SPEED
    @altitude       = DEFAULT_ALTITUDE
  end

  def health
    @health
  end

  def speed
    @speed
  end

  def altitude
    @altitude
  end

  def conscious?
    @health > 0
  end

  def hit(opponent)
    if conscious? &&
      @speed >= opponent.speed &&
      @altitude >= opponent.altitude

      opponent.take_hit(@power)
    end
  end

  def rest
    @health += @healing_factor
    @health = MAX_HEALTH if @health > MAX_HEALTH
  end

  def take_hit(damage)
    @health -= damage
    @health = 0 if @health < 0
  end

end

class Kryptonian < Superhero

  include Strength
  include Flight
  include Speed

end


class Amazonian < Superhero

  include Strength
  include MartialArts

end

class Speedster < Superhero

  include Speed
  include Regeneration

end

class IronPerson < Superhero

  include Flight
  include Genius
  include Rich

end

class XWeapon < Superhero
  include Regeneration
  include Claws
end

class BatPerson < Superhero
  include MartialArts
  include Flight
  include Genius
  include Rich
end
