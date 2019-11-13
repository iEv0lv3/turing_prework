require 'pry'

class Unicorn
  attr_accessor :name, :color

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    return true if self.color == "white"
    false
  end

  def say(words)
    words.prepend("**;* ").concat(" **;*")
  end
end
