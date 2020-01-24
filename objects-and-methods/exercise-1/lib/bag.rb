class Bag
  attr_reader :candies, :empty
  attr_accessor :count
  def initialize
    @candies = []
    @count = 0
    @empty = true
  end

  def empty?
    false
    empty if count == 0
  end

  def << candy
    self.candies << candy
  end

  def contains?(query)
    candies.any?{|candy| candy.type == query}
  end

  def count
    candies.length
  end

end
