class Stark
  attr_reader :name, :location
  attr_accessor :safe, :house_words

  def initialize name, location = "Winterfell"
    @name = name
    @location = location
    @safe = false
    @house_words = "Winter is Coming"
  end

  def safe?
    safe
  end
end
