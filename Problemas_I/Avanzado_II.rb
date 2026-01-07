# frozen_string_literal: true

# Escribe un programa que reciba un string y devuelva un hash con cada palabra y su longitud.

print "Ingresa una frase: "
texto = gets.chomp

palabras = texto.split
long = {} # creamos el hash vacío

# en el hash dar a cada clave un valor numérico ligado a la cantidad de carácteres que posee
palabras.each { |palabra| long[palabra] = palabra.length}

l.each do |w,s|
  puts "La palabra '#{w}' posee #{s} caracteres"
end