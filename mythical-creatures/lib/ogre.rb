class Ogre
  attr_reader :name, :home
  attr_accessor :swings

  def initialize name, home = "Swamp"
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(whom)
    whom.encounter_counter += 1
    swing_at(whom) if whom.encounter_counter % 3 == 0
  end

  def swing_at(whom)
    self.swings += 1
    whom.knocked_out = true if swings == 2
  end

  def apologize(whom)
    whom.knocked_out = false
  end

end
