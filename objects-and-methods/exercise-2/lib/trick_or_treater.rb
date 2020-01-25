class TrickOrTreater
  attr_reader :costume, :bag
  attr_accessor :sugar_level

  def initialize costume
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    costume.style
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end

  def eat
    self.sugar_level += bag.candies[0].sugar
    bag.take(1)
  end

end
