puts 'Primera Parte del programa --> Hola Mundo'
puts 'hola mundo!'

puts ' '
puts 'Segunda Parte del programa --> Operaciones Aritméticas'
x = 6
y = 15
suma = x+y
puts "los operandos son #{x} y #{y}"
puts "el resultado de la suma es: #{suma}"

puts ' '
puts 'Tercera parte del programa --> Bucles'
puts 'bucle del 1 al 6 usando for'
for i in 0..6
  puts i
end
puts 'bucle del 1 al 10 usando while'
j = 1
while j < 10
  puts j
  j = j+1
end

puts 'Cuarta parte del programa --> Figuras usando bucles'
dim = 10
for i in 1..dim
  for j in 1..dim
    print '* '
  end
  puts ' '
end
puts ' '
for i in 1..dim
  for j in 1..i
    print '* '
  end
  puts ' '
end