class Ogre
  attr_accessor :name, :home, :encounter_counter, :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    self.encounter_counter += 1

      if human.notices_ogre? && self.swings % 2 == 0
        self.swing_at(human)
        human.knocked_out = true
      elsif human.notices_ogre?
        self.swing_at(human)
      end
  end

  def swing_at(human)
    self.swings += 1
  end

  def apologize(human)
    human.knocked_out = false
  end
end

class Human
  attr_accessor :name, :encounter_counter, :knocked_out

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    if self.encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?
    self.knocked_out
  end
end
