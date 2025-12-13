# frozen_string_literal: true

class Enemy
  attr_accessor :health
  def initialize(health)
    @health = health
  end
  def take_damage(amount)
    @health -= amount
  end
end