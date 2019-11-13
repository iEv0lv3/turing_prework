class Dragon
  attr_accessor :name, :color, :rider, :hungry, :full

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @full = 0
  end

  def hungry?
    self.hungry
  end

  def eat
    if self.full < 2
      self.full += 1
    elsif self.full >= 2
      self.hungry = false
    end
  end
end
