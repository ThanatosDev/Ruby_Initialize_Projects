# frozen_string_literal: false

# Crea un programa que reciba un arreglo y devuelva un hash con los elementos y cuántas veces se repite cada uno.

print "Digita un inventario: "
inv = gets.chomp

p = []
a = ""

# "splitear" el literal obtenido por teclado para poder tener un arreglo
# con todos los elementos que pertenecen a este
inv.each_char do |c|
  if c == ' '
    unless a.empty?
      p << a
      a = ""
    end
  else
    a << c
  end
end

# ingresar la última palabra del literal declarado
p << a unless a.empty?

# crear un hash para guardar las frecuencias de los elementos disponibles en el arreglo
# generado anteriormente
frc = Hash.new(0)

# iterar en cada componente, asignándoles como valor principal
# su frecuencia
p.each do |elem|
  frc[elem] += 1
end

# imprimir el resultado
frc.each do |plb,frec|
  puts "La palabra '#{plb}' aparece #{frec} veces"
end