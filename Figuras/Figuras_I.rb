# variables
dim = 6 # declarar la dimensión que usaremos para crear las figuras

# crear figuras simples
def figuras_simples(dimension)
  # cuadrado completo
  dimension.times do
    dimension.times { print "*  " }
    puts
  end

  puts
  # triangulo cuadrado completo regular
  dimension.times do |i|
    i.times {print "*  "}
    puts
  end

  puts
  # triangulo cuadrado completo invertido
  dimension.downto(0) do |i|
    i.times {print "*  "}
    puts
  end

  puts
  # triangulo cuadrado completo en espejo
  dimension.times do |i|
    (dimension-i).times {print "   "}
    i.times {print "*  "}
    puts
  end

  puts
  # triangulo cuadrado completo invertido en espejo
  dimension.times do |i|
    i.times {print "   "}
    (dimension-i).times {print "*  "}
    puts
  end
end

# generar estas mismas figuras pero invertidas
def figuras_vacias(dimension)
  # en todos los tipos de figuras vacías comenzaremos por implementar un diseño de tipo matriz

  # cuadrado vacío
  dimension.times do |i|
    dimension.times do |j|
      if (i == 0 || j == 0) || (i == dimension-1 || j == dimension-1)
        print "*  "
      else
        print "   "
      end
    end
    puts
  end

  puts
  # triangulo cuadrado vacío
  dimension.times do |i|
    dimension.times do |j|
      if i == j || i == dimension-1 || j == 0
        print "*  "
      else
        print "   "
      end
    end
    puts
  end

  puts
  # triangulo cuadrado vacío invertido
  dimension.times do |i|
    dimension.times do |j|
      if (j == (dimension-1)-i) || i == 0 || j == 0
        print "*  "
      else
        print "   "
      end
    end
    puts
  end

  puts
  # triangulo cuadrado vacio en espejo
  dimension.times do |i|
    dimension.times do |j|
      if (j == (dimension-1)-i) || i == dimension-1 || j == dimension-1
        print "*  "
      else
        print "   "
      end
    end
    puts
  end

  puts
  # triangulo cuadrado vacío invertido en espejo
  dimension.times do |i|
    dimension.times do |j|
      if i == j || i == 0 || j == dimension-1
        print "*  "
      else
        print "   "
      end
    end
    puts
  end
end

# imprimir las figuras en pantalla
puts "> FIGURAS 1 : TEMA 1 >>"
puts figuras_simples(dim)

puts
puts "> FIGURAS 2 : TEMA 1 >>"
puts figuras_vacias(dim)