# frozen_string_literal: true
# import the objects
require_relative 'Character'
require_relative 'Warrior'
require_relative 'Mage'
require_relative 'Enemy'

# constant for set the universal health of the character
HEALTH_CHARACTER = 30
HEALTH_ENEMY = 40

# request to the user the different options for set a character
print "> Choose your character type (1. Warrior, 2. Mage): "
type = gets.chomp.to_i

print "> Tell us your name: "
name = gets.chomp.to_s

# create the object character needed for the User's choose
character =
  case type
  when 1 then Warrior.new(name,HEALTH_CHARACTER)
  when 2 then Mage.new(name,HEALTH_CHARACTER)
  else
    puts "> Invalid input, closing the program..."
    exit
  end

# print the character's info
puts
puts character.info

# set the enemy object
enemy = Enemy.new(HEALTH_ENEMY)

def fight(character,enemy)
  # INMPORTANT LEARNING: the until loop runs while the condition is false until this
  # makes them true
  until enemy.health <= 0
    # print the character's attack message
    msg = character.attack_message
    puts msg if msg
    # make an atack for the enemy
    puts "#{character.name} attacks!"
    enemy.take_damage(character.attack)
    puts "Enemy has #{enemy.health} HP"
  end
  puts
  puts "> Enemy's down"
end

# call's the fight's function
fight(character,enemy)