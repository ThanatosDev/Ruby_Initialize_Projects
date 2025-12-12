# PROGRAMA 1: MÉTODOS DE ORDENACIÓN Y BUSQUEDA DE NÚMEROS EN RUBY

# utilizando el lenguaje de programación ruby, y con los conocimientos que ya tenemos de algoritmos
# intentaremos implementar mediante funciones que lo realicen los algoritmos tanto
# de ordenación y busqueda que hemos visto anteriormente en los contenidos de la asignatura
# de Programación I del FPGS de DAM.

def bubble_sort(arr)
  n = arr.length
  (n-1).times do |i|
    (n-1-i).times do |j|
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
end

def binary_search(arr,key)
  max = arr.length
  min = 0

  while min <= max
    mid = (min+max)/2
    if arr[mid] == key
      return mid
    elsif arr[mid] > key
      max = mid-1
    elsif arr[mid] < key
      min = mid+1
    end
  end

  -1

end

arr = [5,2,8,9,6,4,1,0,3,7,10]
puts "> El array sin ordenar es #{arr}"
bubble_sort(arr)
puts "> El array anterior ya ordenado sería: #{arr}"

80.times do i='-'
  print i
end

puts ' '
print '> Introduce un número a buscar: '
numero = gets.chomp.to_i

# buscar el número en el array
indice_numero_buscado = binary_search(arr,numero)

case indice_numero_buscado
when -1
  puts "> El número #{numero}, no se encuentra en el arreglo de datos"
else
  puts "> El número #{numero} está en el índice #{indice_numero_buscado}"
end

