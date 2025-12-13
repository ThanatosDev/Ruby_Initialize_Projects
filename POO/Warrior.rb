# frozen_string_literal: true

class Warrior < Character
  # var. to warrior attack
  WARRIOR_ATTACK_DAMAGE = 10
  # attack method
  def attack
    WARRIOR_ATTACK_DAMAGE
  end
end