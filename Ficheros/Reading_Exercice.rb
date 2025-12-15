# frozen_string_literal: true

# EN ESTE EJERCICIO LO QUE HAREMOS SERÁ INTENTAR SABER CUANTAS VOCALES TIENE UNA CADENA DE CARACTERES
# ALMACENADA EN UN FICHERO DE TEXTO


# hacer la lectura del fichero
content = File.read("Ficheros/Reading_File_EX1.txt")

# tratar sus datos
content_to_char_array = content.chars
vocals_array = %w[a e i o u]
count = 0

(content_to_char_array.size).times do |index|
  (vocals_array.size).times do |index_vocals|
    if content_to_char_array[index] == vocals_array[index_vocals]
      count += 1
    end
  end
end

# imprimir resultado
puts "> La frase: '#{content}' tiene un total de #{count} vocales"
