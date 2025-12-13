# frozen_string_literal: true

class Mage < Character
  # var. damage that make the mage
  MAGE_ATTACK_DAMAGE = 6
  # attack message
  def attack_message
    puts "casting spell..."
  end
  # attack method
  def attack
    MAGE_ATTACK_DAMAGE
  end
end