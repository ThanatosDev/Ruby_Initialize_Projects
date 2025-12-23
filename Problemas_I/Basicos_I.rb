# frozen_string_literal: true

# Escribe un programa que reciba un número n e imprima todos los divisores de n.

print "Ingresa un número para saber sus divisores: "
numero = gets.chomp.to_i # recibir el número como un entero

(1...numero).each do |i|
  if numero%i == 0
    print "#{i}, "
  end
end
puts "y #{ numero}"
puts