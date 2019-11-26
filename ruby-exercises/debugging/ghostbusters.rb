class Ghostbuster

  def initialize(name)
    @name = name
  end

  def say_my_name
    puts "I'm #{@name}"
  end

  def ride(car = "ECTO-1")
    @car = car
  end
end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride

