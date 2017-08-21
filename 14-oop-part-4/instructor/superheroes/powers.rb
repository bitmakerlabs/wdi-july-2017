module Flight

  CRUISING_ALTITUDE = 1000

  def fly
    @altitude = CRUISING_ALTITUDE
  end

  def land
    @altitude = 0
  end

end

module Speed

  FAST = 1000

  def run
    @speed = FAST
  end

  def walk
    @speed = 0
  end

end

module Strength

  GODLY_STRENGTH = 50

  def initialize(name)
    super(name)
    @power = GODLY_STRENGTH
  end

end

module Claws

  def initialize(name)
    super(name)
    @power = 30
  end

end

module MartialArts

  def initialize(name)
    super(name)
    @power = 20
  end

end

module Regeneration

  def initialize(name)
    super(name)
    @healing_factor = 50
  end

end

module Genius

  def activate_shield
    @shielded = true
  end

  def take_hit(damage)
    if @shielded
      @shielded = false
    else
      super(damage)
    end
  end

end

module Rich

  INITIAL_FUNDS     = 1_000_000
  INCREMENTAL_FUNDS = 500_000
  SUPER_WEAPON_COST = 1_000_000
  SUPER_DAMAGE      = 1000

  def initialize(name)
    super(name)
    @money = INITIAL_FUNDS
  end

  def make_money
    @money += INCREMENTAL_FUNDS
  end

  def use_super_weapon(opponent)
    if @money >= SUPER_WEAPON_COST
      opponent.take_hit(SUPER_DAMAGE)
      @money -= SUPER_WEAPON_COST
    end
  end

end
