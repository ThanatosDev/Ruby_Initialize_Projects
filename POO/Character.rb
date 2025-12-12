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
  # meth. info
  def info
    "> The character #{@name} has #{@health} HP"
  end
end