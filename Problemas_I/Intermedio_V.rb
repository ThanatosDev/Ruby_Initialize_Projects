# frozen_string_literal: true

# Escribe un programa que reciba un string y devuelva el número de vocales, consonantes y dígitos.

print "Ingrese una palabra: "
palabra = gets.chomp

palabra_to_array = palabra.chars
vocals_array = %w[a e i o u]
cont_v = 0

# calcular las vocales
(palabra_to_array.size).times do |index|
  (vocals_array.size).times do |index_v|
    if palabra_to_array[index] == vocals_array[index_v]
      cont_v += 1
    end
  end
end

# calculas las consonantes
cont_c = palabra.size-cont_v

puts "La palabra: '#{palabra}' posee #{cont_v} vocales y #{cont_c} consonantes, y un total de #{palabra.size} dígitos"