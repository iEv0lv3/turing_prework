class Parrot
  attr_reader :name, :sound, :known_words

  def initialize(name: '', known_words: nil)
    @name = name
    @known_words = known_words
    @sound = 'Squawk!'
  end
end