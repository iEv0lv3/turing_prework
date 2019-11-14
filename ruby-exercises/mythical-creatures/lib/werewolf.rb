class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry, :victims

  def initialize(name, location = "Boulder")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @victims = 0
  end

  def human?
    self.human
  end

  def wolf?
    self.wolf
  end

  def change!
    if self.human == true
      self.human = false
      self.wolf = true
      self.hungry = true
    else
      self.human = true
      self.wolf = false
    end
  end

  def hungry?
    self.hungry
  end

  def consume!(victim)
    if self.wolf == true
      self.victims += 1
      self.hungry = false
      victim.status = :dead
    else

    end
  end
end
