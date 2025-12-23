# frozen_string_literal: true

# Escribe un programa que genere los primeros n números primos.

n = 10 # vamos a imprimir los 50 primeros números primos
p = [] # lista para imprimir los n primeros números primos

k = 2 # inicializamos un primer índice k que nos funcionará como valor de prueba
while p.size < n
  es_primo = true # definir de primera mano que el número k será primero "siempre" hasta que se contradiga

  i = 2
  # comprobar todos los números posibles desde 2 hasta k-1 como rango
  while i < k
    if k%i == 0
      es_primo = false # como hemos iniciado desde 2 y llegaremos hasta k-1, estamos excluyendo
      # los únicos dos divisores posibles dentro del rango de un número primo
      break # romper este primer bucle en caso de que el número encontrado no sea primo
    end
    i += 1 # en caso de que se cumpla la condición de que el número es primo, seguir incrementado el índice
  end
  p << k if es_primo # insertaremos en la lista de primos el número k si este es primo
  k += 1 # incrementar el conteo de 'k' como número de prueba en una unidad
end

# imprimir el resultado en pantalla
puts "Los primeros #{n} números primos son: #{p.join(', ')}"