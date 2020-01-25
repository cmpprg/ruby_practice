class Medusa
  attr_reader :name, :statues

  def initialize name
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues.push(victim)
    unstone if statues.count > 3
  end

  def unstone
    statues.shift.stoned = false
  end

end
