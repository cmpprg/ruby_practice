class Hobbit
  attr_reader :name, :disposition
  attr_accessor :age

  def initialize name, disposition = "homebody", age = 0
    @name = name
    @disposition = disposition
    @age = age
  end

  def celebrate_birthday
    self.age += 1
  end

  def adult?
    return false if age < 33
    true
  end

  def old?
    return true if age >= 101
    false
  end

  def has_ring?
    return true if name == "Frodo"
    false
  end

  def is_short?
    true
  end

end
