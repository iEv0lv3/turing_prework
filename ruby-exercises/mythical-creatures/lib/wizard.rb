class Wizard
  attr_accessor :name, :beard, :spell, :awake, :cast, :stamina

  def initialize(name, params = {})
    @name = name
    @beard = params.fetch(:bearded, true)
    @spell = "sudo "
    @awake = true
    @stamina = 0
  end

  def bearded?
    self.beard
  end

  def incantation(words)
    self.spell.concat(words)
  end

  def rested?
    self.awake
  end

  def cast
    if self.stamina < 2
      self.stamina += 1
      "MAGIC MISSLE"
    elsif self.stamina >= 2
      self.stamina += 1
      self.awake = false
    end
  end
end
