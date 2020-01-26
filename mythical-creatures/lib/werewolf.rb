class Werewolf
  attr_reader :name, :location
  attr_accessor :human, :hungry

  def initialize name, location = ""
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    human
  end

  def wolf?
    !human
  end

  def hungry?
    hungry
  end

  def change!
    self.human = !human
    self.hungry = !hungry
  end

  def consume!(victim)
    if hungry == true
      self.hungry = false
      victim.status = :dead
      true
    else
      false
    end
  end

end
