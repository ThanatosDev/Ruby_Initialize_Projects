# frozen_string_literal: true

require_relative 'Car'

print "> Select the brand of the car that u want: "
brand = gets.chomp.to_s

puts

print "> Select the model of the car that u selected: "
model = gets.chomp.to_s

puts

# initialize the car object
car = Car.new(brand,model,0)
finalize = false

while !finalize
  print "> Do you want increase(i) or brake(b) the velocity?: "
  opt = gets.chomp.to_s
  case opt
  when "i"
    print "> How many velocity do you want to increase?: "
    amount = gets.chomp.to_i
    car.acelerate(amount)
  when "b"
    print "> How many do you want to rest at the actual velocity?: "
    amount = gets.chomp.to_i
    car.brake(amount)
  end

  # print at the screen the velocity information
  puts
  print "> Actual velocity: #{car.actual_velocity}"

  puts

  print "> Do you want to continue?: "
  opt = gets.chomp.to_s

  if opt == 's' || opt == 'S'
    print "> We'll continue..."
    puts
  else
    puts car.info
    puts "> Good Bye!"
    finalize = true
  end
end

