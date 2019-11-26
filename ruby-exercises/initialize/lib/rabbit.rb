class Rabbit
  attr_reader :num_syllables

  def initialize(name: '', num_syllables: nil)
    @name = name
    @num_syllables = num_syllables
  end

  def name
    if @num_syllables == 2
      "#{@name} Rabbit"
    else
      "#{@name}"
    end
  end
end
