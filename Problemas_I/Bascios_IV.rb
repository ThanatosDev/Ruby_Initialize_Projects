# frozen_string_literal: true

# Escribe un programa que reciba un número y determine si es un número perfecto
# (la suma de sus divisores propios es igual al número).

print "Ingresa un número para saber si es perfecto o no: "
n = gets.chomp.to_i

sd = 0 # sumador

(1...n).each do |d|
  k = n%d
  if k == 0
    sd += d
  end
end

if sd == n
  puts "#{n} es un número perfecto..."
else
  puts "El número no es perfecto..."
end