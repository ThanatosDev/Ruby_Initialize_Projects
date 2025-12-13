# frozen_string_literal: true

class Character
  # gen. getter and setter
  attr_accessor :name, :health
  # init meth
  def initialize(name,health)
    # init var
    @name = name
    @health = health
  end
  # attack universal message
  def attack_message
    nil
  end
  # meth. info
  def info
    "> The character #{name} has #{health} HP"
  end
end