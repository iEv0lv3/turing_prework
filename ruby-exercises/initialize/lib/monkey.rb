class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(monkey)
    @name = monkey[0]
    @type = monkey[1]
    @favorite_food = monkey[2]
  end
end
