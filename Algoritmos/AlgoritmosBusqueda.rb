# uso de bubbleSort en Ruby
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

# técnica de insertionSort en Ruby
def insertion_sort(arr)
  n = arr.length
  (1...n).each do |i|
    key = arr[i]
    j = i-1
    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end
    arr[j+1] = key
  end
end


# método de busqueda dicotómica
def binary_search(arr,key)

  # definir el tamaño del array el cual evaluaremos
  n = arr.length
  # definir el máximo del arreglo en la posición última del array
  max = n-1
  # definit el mínimo del arreglo en la posición 0 de este
  min = 0

  # crear un bucle while que tendrá que evaluar los contenidos dentro del arreglo
  # en cada iteración
  while min <= max
    # recalcular el medio en cada iteración fallida (no se úbica aún el número a buscar)
    mid = (max+min)/2
    # si el número en la mitad del array es el que buscamos, devolver su indice
    if arr[mid] == key
      return mid
    # si es menor reducir el tamaño a evaluar manipulando el máximo índice del area
    elsif arr[mid] > key
      max = mid-1
    # si es mayor reducir el tamaño a evaluar manipulando el mínimo índice del area
    elsif arr[mid] < key
      min = mid+1
    end
  end

  # si no encuentra el número devolver un 0 como resultado
  -1

end

# salto de linea al inicio
puts ' '

# declarar los arrays
array_a = [8,4,2,1,7,5,6]
array_b = [16,11,21,12,66,24]

# mostrar sus valores antes de organizar
puts "El array sin ordenar es: #{array_a} <-- Array A"
puts "El array sin ordenar es: #{array_b} <-- Array B"

# declarar las funciones necesarias para poder hacer el ordenamiento
bubble_sort(array_a)
insertion_sort(array_b)

# separar los resultados con una linea recta
80.times do i='-'
  print i
end

puts ' '


# enseñar los arrays ya ordenados
puts "El array ordenado con BubbleSort es: #{array_a} <-- Array A"
puts "El array ordenado con InsertionSort es: #{array_b} <-- Array B"

# salto de linea
puts ' '

# solicitar un número al usuario para buscar en los arrays
print "Ingrese un número para buscar en los arrays ordenados: "
numero = gets.chomp.to_i # entrada convertida a enteros

indice_a = binary_search(array_a,numero)
indice_b = binary_search(array_b,numero)

# detectar en que arrays se encuentra el número solicitado
if indice_a != -1
  puts "El número #{numero}, está en la posición #{indice_a} del Array A"
end

if indice_b != -1
  puts "El número #{numero}, está en la posición #{indice_b} del Array B"
end

if indice_a == -1 && indice_b == -1
  puts "El número #{numero} no está en ningún array"
end