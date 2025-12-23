# frozen_string_literal: true

# Escribe un programa que reciba un arreglo de números y devuelva un nuevo arreglo con los números primos.

# función que detecte si un número es primo o no
def prim(n)
  return false if n < 2
  k = 2
  while k < n
    return false if n%k == 0
    k += 1
  end
  true
end

arr = [1,22,38,7,3,29,15,186] # array con una serie de números
arr_p = [] # segundo array donde guardaremos los números primos que encontremos

# bucle que itere por cada elemento del arreglo
arr.each do |e|
  # si el elemento es primo, llevarlo al array de primos
  if prim(e)
    arr_p << e
  end
end

# imprimir el array de primos en pantalla
puts arr_p.inspect