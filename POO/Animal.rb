# frozen_string_literal: true

class Animal
  # getter and setter for the Animal's atributes
  attr_accessor :name , :age

  # constructor with atributes
  def initialize(name,age)
    @name = name
    @age = age
  end

  # print the animal's information
  def info
    "Hello! My name's #{name} and my age is #{age}, i'm very happy!"
  end
end
