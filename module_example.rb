module Movable
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include Movable
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include Movable
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "rocket",
              make: "spaceship",
              model: "rocketship"
              )

bike = Bike.new(
                gear: 1,
                type: "tiny",
                weight: 15
                )

car.accelerate
car.honk_horn
p car
bike.ring_bell
p bike