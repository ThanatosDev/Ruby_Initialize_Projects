# crear un programa que detecte si una cadena de caracteres es un palindromo o no
def detectar_palindromo(input)
  input_as_array = input.chars
  input_length = input.size

  (input_length/2).times do |i|
    new_index = input_length-1-i
    # hacer un intercambio común sobre las posiciones de la palabra convertida en array
    aux = input_as_array[i]
    input_as_array[i] = input_as_array[new_index]
    input_as_array[new_index] = aux
  end

  input_reverse = input_as_array.join # convertir la cadena de caracteres en un string de nuevo

  if input_reverse == input
    true
  else
    false
  end
end

finalizar = false

while !finalizar
  # definir la palabra a evaluar
  print "> Digite una palabra para evaluar: "
  palabra = gets.chomp.to_s # obtener el valor que ingrese por teclado

  # evaluar la palabra
  if detectar_palindromo(palabra)
    puts "> La palabra #{palabra} es palindromo"
  else
    puts "> La palabra #{palabra} no es palindromo"
  end

  puts

  print "> Desea continuar la ejecución (s/n): "
  opcion = gets.chomp.to_s
  opcion == "n" || opcion == 'N' ? finalizar=true : finalizar=false
end
