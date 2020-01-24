class Wizard
  attr_reader :name, :bearded
  attr_accessor :cast_count

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @cast_count = 0
  end

  def bearded?
    bearded
  end

  def incantation(words)
    "sudo #{words}"
  end

  def rested?
    return true unless cast_count >= 3
    false
  end

  def cast
    self.cast_count += 1
    "MAGIC MISSLE!"
  end

end
