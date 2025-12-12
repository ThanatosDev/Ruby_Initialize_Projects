def div(a,b)
  if b == 0
    puts 'No se puede dividir por 0'
  else
    a/b # recordar que en Ruby no es totalmente necesario utilizar 'return' para devolver un valor
  end
end

print " > Ingresa el número de la operación que quieres realizar (1.Suma, 2.Resta, 3.Mult, 4.Div): "
opcion = gets.chomp.to_i

print "   > Ingresa el nominador: "
nom = gets.chomp.to_i
print "   > Ingresa el denominador: "
deno = gets.chomp.to_i

rel = 0

case opcion
when 1
  rel = nom+deno
when 2
  rel = nom-deno
when 3
  rel = nom*deno
when 4
  rel = div(nom,deno)
else
  puts 'entrada no válida'
end

print "> El resultado es: #{rel}"
