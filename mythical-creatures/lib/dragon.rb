class Dragon
  attr_reader :name, :rider, :color
  attr_accessor :meals

  def initialize name, color, rider
    @name = name
    @rider = rider
    @color = color
    @meals = 0
  end

  def hungry?
   return true until meals == 3
   false
  end

  def eat
    self.meals += 1
  end

end
