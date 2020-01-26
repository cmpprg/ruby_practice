class LeatherChair
  attr_accessor :exposed
  def initialized
    @exposed = false
  end

  def faded?
    self.exposed
  end

  def expose_to_sunlight
    self.exposed = true
  end
end
