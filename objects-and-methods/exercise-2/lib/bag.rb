class Bag
  attr_accessor :candies, :count, :taken

  def initialize
    @count = 0
    @candies = []
    @taken = []
  end

  def empty?
    return true unless count > 0
    false
  end

  def <<(candy)
    self.candies << candy
  end

  def contains?(query)
    candies.any? {|candy| candy.type == query}
  end

  def grab(query)
    self.candies.delete(self.candies.find {|candy| candy.type == query})
  end

  def count
    self.count = candies.length
  end

  def take(amount)
    amount.times do
      taken.push(self.candies.shift)
    end
    taken
  end

end
