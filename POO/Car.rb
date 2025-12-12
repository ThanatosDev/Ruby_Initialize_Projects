# frozen_string_literal: true
# class car where we'll to define a car with their attributes and last
# manipulate their different information
class Car
  attr_accessor :brand, :model, :actual_velocity

  # constructor method that initialize our car object
  def initialize(brand,model,actual_velocity)
    @brand = brand
    @model = model
    @actual_velocity = actual_velocity
  end

  def acelerate(new_velocity)
    @actual_velocity += new_velocity
  end

  def brake(amout)
    if amout != 0 && actual_velocity > 0
      @actual_velocity -= amout
    end
    @actual_velocity = 0 if @actual_velocity < 0
  end

  def info
    " info:
     > Car's Brand: #{brand}
     > Car's Model: #{model}
     > Car's last velocity: #{actual_velocity}"
  end
end
