# frozen_string_literal: true

# Crea un programa que reciba un arreglo y devuelva el número que aparece más veces (moda).

arr = [33,49,49,64,33,21,12,49]

# crear un nuevo hash map inicializado en 0
frecuencias = Hash.new(0)

# recorrer cada elemento dentro del arreglo y dentro del mapa añadir un valor relacionado con
# la frecuencia del mismo
arr.each do |e|
  frecuencias[e] += 1
end

# obtener la clave con el valor numérico más grande
clave, moda = frecuencias.max_by { |c,m| m}

# implementación de la búsqueda de la frecuencia más alta de forma manual
# START ALGORITHM <----------------------------------------
# clave_max = nil
# valor_max = -Float::INFINITY // genera en el valor máximo un valor muy pequeño
# // iterar en cada componente del hash map de frecuencias actualizando la información
# // del dato más grande.
# frecuencias.each do |k,v|
#   if v > valor_max
#     valor_max = v
#     clave_mac = k
#   end
# end
# ------------------------------------------> END ALGORITHM
# aquí v corresponderá a las repeticiones del valor k, donde k no solo será la key
# sino también la moda dentro de los datos consignados en el arreglo

# imprimir el resultado en pantalla
puts "la moda del arreglo #{arr} es #{clave} con #{moda} repeticiones..."