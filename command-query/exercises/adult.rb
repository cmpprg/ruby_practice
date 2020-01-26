class Adult
  attr_accessor :sober, :drink_count

  def initialize
    @sober = true
    @drink_count = 0
  end

  def sober?
    sober
  end

  def consume_an_alcoholic_beverage
    self.drink_count += 1
    self.sober = false if drink_count > 2
  end
end
