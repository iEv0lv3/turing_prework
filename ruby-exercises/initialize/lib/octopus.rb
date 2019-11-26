require './lib/narwhal'
require './lib/eel'

class Octopus
  attr_reader :name, :friend

  def initialize(name, friend)
    @name = name
    @friend = friend
  end
end
