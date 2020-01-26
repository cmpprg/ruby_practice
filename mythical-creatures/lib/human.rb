class Human
  attr_reader :name
  attr_accessor :encounter_counter, :notices_ogre, :knocked_out

  def initialize name = 'Jane'
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    return self.notices_ogre = true if encounter_counter % 3 == 0
    self.notices_ogre = false
  end

  def knocked_out?
    knocked_out
  end

end
