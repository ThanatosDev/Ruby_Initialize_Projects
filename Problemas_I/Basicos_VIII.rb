# frozen_string_literal: true

# Escribe un programa que reciba un arreglo y devuelva el segundo número más grande.

arr = [4,2,7,1,16,3,33,24]

puts "El array es: #{arr}"

# podemos ordenar el array utilizando el comando [objeto].sort -> facilita más la vida
(arr.size-1).times do |i|
  (arr.size-i-1).times do |j|
    if arr[j] > arr[j+1]
      arr[j], arr[j+1] = arr[j+1], arr[j]
    end
  end
end

index = arr.size-1
puts "El segundo número más grande en el arreglo es #{arr[index-1]}"