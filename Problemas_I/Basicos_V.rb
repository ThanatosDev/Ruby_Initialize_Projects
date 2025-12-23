# frozen_string_literal: true

# Crea un programa que reciba un arreglo y devuelva un nuevo
# arreglo con los elementos duplicados eliminados y ordenados.

ARR = [16,16,26,26,77,18,44,44,21,21]
arr_ord = ARR.sort # ordenar el array de menor a mayor en un array ordenado
arr_no_dup = [] # array donde tendremos los componentes del principal sin duplicados

puts "> El array original es: #{ARR}"

i = 0
while i < arr_ord.size
  unless arr_no_dup.include?(arr_ord[i]) # include lo que nos devuelve es si un elemento x está incluído en un arreglo de datos
    arr_no_dup << arr_ord[i]
  end
  i += 1
end

puts "> El array ya ordenado y SIN números repitentes es: #{arr_no_dup}"