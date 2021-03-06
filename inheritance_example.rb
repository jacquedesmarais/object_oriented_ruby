class Vehicle
    def initialize
    @speed = 0
    @direction = 'north' # not dynamic so direction is hard coded in
  end

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

class Car < Vehicle
  def initialize(input_options)
    super() #paases input options to the super class
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @gear = input_options[:gear]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

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

