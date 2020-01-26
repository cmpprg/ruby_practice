class RollCall
  attr_accessor :roll

  def initialize
    @roll = []
  end

  def longest_name
    roll.max_by{|name| name.length}
  end

  def <<(name)
    self.roll << name
  end
end
