class Medusa
  attr_accessor :name, :statues, :stoned

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if self.statues.include?(victim)
      victim.stoned = true
    elsif self.statues.count <= 2
      self.statues << victim
      victim.stoned = true
    elsif self.statues.count >= 3
      self.statues.at(0).stoned = false
      self.statues.delete_at(0)
      self.statues << victim
      victim.stoned = true
    end
  end
end

class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    self.stoned
  end
end
