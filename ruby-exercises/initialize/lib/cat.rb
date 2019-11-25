require 'minitest/autorun'
require 'minitest/pride'

class Cat
  attr_reader :name, :sound

  def initialize(name)
    @name = name
    @sound = 'meow'
  end
end
