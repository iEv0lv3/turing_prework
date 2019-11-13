class Hobbit
  attr_accessor :name, :disposition, :age, :ring

  def initialize(name, disposition = "homebody", ring = false)
    @name = name
    @disposition = disposition
    @age = 0
    @ring = ring
  end

  def celebrate_birthday
    self.age += 1
  end

  def adult?
    if self.age <= 32
      false
    elsif self.age >= 33
      true
    end
  end

  def old?
    if self.age >= 101
      true
    else
      false
    end
  end

  def has_ring?
    self.ring
  end

  def is_short?
    true
  end
end
