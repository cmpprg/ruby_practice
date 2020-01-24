class Pirate
  attr_reader :name, :job
  attr_accessor :heinous_act_count, :booty

  def initialize name, job = "Scallywag"
    @name = name
    @job = job
    @heinous_act_count = 0
    @booty = 0
  end

  def cursed?
    return false unless heinous_act_count == 3
    true
  end

  def commit_heinous_act
    self.heinous_act_count += 1
  end

  def rob_some_ships
    self.booty += 100
  end

end
