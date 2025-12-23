# frozen_string_literal: true

# Escribe un programa que reciba un arreglo de números y devuelva el arreglo invertido sin usar reverse.

arr = [26,13,22,10,18]

izquierda = 0
derecha = arr.size-1

while izquierda < derecha
  arr[derecha], arr[izquierda] = arr[izquierda], arr[derecha]
  derecha -= 1
  izquierda += 1
end

puts arr.inspect