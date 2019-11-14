class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :mood, :laying, :stand_up, :rested

  def initialize(name, breed = "Big")
    @name = name
    @breed = breed
    @cranky = false
    @mood = 0
    @standing = true
    @laying = false
    @rested = false
  end

  def shoot
    if self.laying
      "NO!"
    elsif self.mood < 2
      self.mood += 1
      "Twang!!!"
    elsif self.mood >= 2
      self.cranky = true
      "NO!"
    end
  end

  def run
    if self.laying
      "NO!"
    elsif self.mood < 2
      self.mood += 1
      "Clop clop clop clop!!!"
    elsif self.mood>= 2
      self.cranky = true
      "NO!"
    end
  end

  def cranky?
    self.cranky
  end

  def standing?
    self.standing
  end

  def sleep
    if self.standing
      "NO!"
    else
      self.cranky = false
      self.mood = 0
    end
  end

  def lay_down
    if self.standing
      self.standing = false
      self.laying = true
    end
  end

  def stand_up
    if self.laying
      self.standing = true
      self.laying = false
    end
  end

  def standing?
    self.standing
  end

  def laying?
    self.laying
  end

  def drink_potion!
    if self.laying
      false
    elsif self.rested
      false
    else
      self.rested = true
    end
  end
end
