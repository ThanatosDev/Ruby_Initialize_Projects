# frozen_string_literal: true

# IMPORTANT LEARNING: we can initialize variables just using conditionals on theis declaration
# that helps us to make or define values on diferentes types of inputs on the programs

# call the dependencies from the another classes
require_relative 'Animal'
require_relative 'Dog'
require_relative 'Cat'

# request to the user that he/she defines the animal type that they want
print "> Define the type of animal that you want to create, where 1. Dog and 2. Cat: "
animal_type = gets.chomp.to_i

# define the way when we can call the animal that the user defines
type =
  case animal_type
  when 1 then "dog"
  when 2 then "cat"
  else
    "invalid"
  end

if type == "invalid"
  puts "> Animal invalid, closing the program"
  exit # forced exit by the program
end

# make a line jump
puts
print "> Who's your #{type}'s names? "
name = gets.chomp

print "> Define the #{type}'s age: "
age = gets.chomp.to_i

# modify the animal data
animal =
  case type
  when "dog" then Dog.new(name,age)
  when "cat" then Cat.new(name,age)
  end


# print the information on the screen
puts
puts animal.info
puts animal.sound