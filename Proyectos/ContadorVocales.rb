# crear un programa que reciba una palabra y cuente cuantas vocales tiene
def contador_vocales(input)
  input_to_array = input.chars
  vocals_array = %w[a e i o u] # de esta manera puedo crear un array de caracteres
  size = input_to_array.size
  counter = 0

  # bucle que recorrerá el array contabilizando cada vez que se encuentre
  # con una vocal
  size.times do |i|
    (vocals_array.size).times do |j|
      if input_to_array[i] == vocals_array[j]
        counter += 1
      end
    end
  end
  # devolver el valor de counter
  counter
end

# definir la palabra a evaluar
palabra = "nicolas"

puts "> La palabra '#{palabra}' posee un total de #{contador_vocales(palabra)} vocales"