class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  attr_accessor :hunts_white_walkers

  def initialize name, home = "Beyond the Wall", size = "Massive"
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(whom)
    starks_to_protect << whom if home == whom.location && starks_to_protect.count < 2
    whom.house_words = "The North Remembers"
    whom.safe = true
  end

  def hunts_white_walkers?
    return self.hunts_white_walkers = true unless starks_to_protect.count > 0
    self.hunts_white_walkers = false
  end

  def leaves(whom)
    whom.safe = false
    return starks_to_protect.delete(starks_to_protect.detect{|person| person.name == whom.name})
    "cannot stop protecting someone you didn't start protecting."
  end
end
