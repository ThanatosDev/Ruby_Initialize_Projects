# frozen_string_literal: true

# Crea un programa que reciba un número y devuelva la suma de todos los números impares menores que él.

print ">Digita un número entero: "
num = gets.chomp.to_i

sum = 0

num.times do |indice|
  mod = indice%2
  if mod != 0
    sum = sum + indice
  end
end

puts
print ">La suma de los números impares por debajo del número #{num} es #{sum}"