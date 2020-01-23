class Eel
  attr_writer :name

  def initialize(name)
    @name = name
  end

  def name
    return "just another eel"
  end
end
