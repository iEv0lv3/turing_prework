class Pirate
  attr_accessor :name, :job, :cursed, :reputation, :commit_heinous_act, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @reputation = 0
    @booty = 0
  end

  def cursed?
    self.cursed
  end

  def commit_heinous_act
    if self.reputation < 2
      self.reputation += 1
    elsif self.reputation >= 2
      self.reputation += 1
      self.cursed = true
    end
  end

  def plunder_ship
    self.booty += 100
  end
end
