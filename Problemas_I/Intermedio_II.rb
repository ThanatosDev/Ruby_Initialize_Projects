# frozen_string_literal: false

# Crea un programa que reciba un string y devuelva el palíndromo más largo que contenga.

def es_palindromo(palabra)
  # refactorización del código
  izquierda = 0
  derecha = palabra.size-1

  while izquierda < derecha
    return false if palabra[izquierda] != palabra[derecha]
    izquierda += 1
    derecha -= 1
  end
  true
end

print ">Digite una frase: "
entrada = gets.chomp

p = []
t = ""

# dividir la frase en sus componentes
entrada.each_char do |c|
  if c == ' '
    unless t.empty?
      p << t
      t = ""
    end
  else
    t << c
  end
end

# añadir la última palabra del texto
p << t unless t.empty?

# verificar los palíndromos
palabra_palindroma = []

p.each do |palabra|
  palabra_palindroma << palabra if es_palindromo(palabra)
end

if palabra_palindroma.empty?
  puts "No hay palíndromos en el texto"
else
  # verificar la longitud más grande para ver el palíndromo más extenso
  if palabra_palindroma.size > 1
    mayor = palabra_palindroma[0]

    palabra_palindroma.each do |palabra|
      if palabra.size > mayor.size
        mayor = palabra
      end
    end

    puts "El palíndromo más largo es: #{mayor}"
  else
    puts "Solo hay un palíndromo: #{palabra_palindroma[0]}"
  end
end