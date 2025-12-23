# frozen_string_literal: true

# Escribe un programa que reciba una frase y devuelva un hash con la frecuencia de cada letra.

print "> Digita una frase completa: "
frase = gets.chomp

frecuencias = Hash.new(0) # creamos un Hash (lo veremos mejor en ejemplos aparte además de la documentación)
                          # de aprendizaje del lenguaje que podemos encontrar en el GitHub del proyecto

frase.each_char do |c|
  # hacer iteraciones por cada carácter en la cadena definida
  if c >= 'a' || c <= 'z'
    frecuencias[c] += 1 # definir que en la posición que corresponde al carácter 'c', incremente su valor
  end
end

# imprimir frecuencias
# para imprimir los valores y los índices presentes en una función de hash, deberemos de utilizar un
# bucle 'each' que lo recorra
frecuencias.each do |letras, frecuencia|
  puts "La letra #{letras}, se repite #{frecuencia} veces"
end
