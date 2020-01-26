class Centaur
  attr_reader :name, :breed
  attr_accessor :cranky, :standing, :shot_count, :sick
  def initialize name, breed
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @shot_count = 0
    @sick = false
  end

  def shoot
    return "NO!" if shot_count >= 3 || standing == false
    self.shot_count += 1
    self.cranky = true if shot_count >= 3
    "Twang!!!"
  end

  def run
    return "NO!" if cranky == true || standing == false
    self.cranky = true
    "Clop clop clop clop!!!"
  end

  def sleep
    return "NO!" if standing == true
    self.cranky = false
    self.shot_count = 0
    "You are sleeping."
  end

  def lay_down
    self.standing = false
    "You have layed down."
  end

  def stand_up
    self.standing = true
    "You have stood back up."
  end

  def drink_potion
    return "NO!" if standing == false
    return self.sick = true if cranky == false
    self.cranky = false
    self.shot_count -= 1
    "You have drank the potion"
  end

  def cranky?
    cranky
  end

  def standing?
    standing
  end

  def laying?
    !standing
  end

  def sick?
    sick
  end
end
