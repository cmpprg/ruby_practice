class Vampire
  attr_reader :name, :pet
  attr_accessor :thirsty

  def initialize(name, pet = "bat", thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty

  end

  def thirsty?
    thirsty
  end

  def drink
    self.thirsty = false
  end

end
