# segunda etapa de generación de figuras geometricas, triangulos equilateros completos y vacíos con diferentes alineaciones

# figuras medias completas
def figuras_completas(dimension)
  # triangulo equilátero completo
  dimension.times do |i|
    # posicionar primero los espacios en blanco dentro del tríangulo
    # el área en blanco se calcula como normalmente si fuésemos a crear un tríangulo cuadrado en espejo
    (dimension-i).times {print "  "}
    # después imprimir cada asterisco, recordemos que estos tendrán que alinearse con un eje central
    # más los asteriscos de los costados que se irán incrementando en doble por cada iteración
    numero_asteriscos = i*2+1
    numero_asteriscos.times {print "* "}
    puts
  end

  puts
  # tríangulo equilátero completo invertido
  dimension.times do |i|
    # posicionar los espacios en blanco esta vez a la inversa
    i.times {print "  "}
    # generar los asteriscos
    numero_asteriscos = 2*(dimension-i)-1
    numero_asteriscos.times {print "* "}
    puts
  end

  puts
  # tríangulo equilátero completo a 90º
  # definir las filas y las columnas de cada lugar
  row_dim = dimension*2+1 # el +1 se agrega para poder darle un espacio extra al área para completar una figura
  row_dim.times do |row|
    (dimension+1).times do |col|
      if col <= dimension-(dimension-row).abs
        print "* "
      end
    end
    puts
  end

  puts
  # tríangulo equílatero completo a 180º
  row_dim.times do |row|
    (dimension + 1).times.reverse_each do |col|
      if col <= dimension-(dimension-row).abs
        print "* "
      else
        print "  "
      end
    end
    puts
  end
end

def figuras_vacias(dimension)
  # tríangulo equilátero vacío
  dimension.times do |row|
    (dimension*2).times do |col|
      # para visualizar mejor el código, separaremos los cálculos en funciones separadas
      left = dimension-1-row
      bottom = dimension-1
      right = dimension+row
      if col == left || row == bottom || col == right
        print "* "
      else
        print "  "
      end
    end
    puts
  end

  puts
  # tríangulo equilátero vacío invertido
  dimension.times do |row|
    (dimension*2).times do |col|
      # para visualizar mejor el código, separaremos los cálculos en funciones separadas
      left = row
      right = (dimension*2-1)-row
      top = 0
      if col == left || row == top || col == right
        print "* "
      else
        print "  "
      end
    end
    puts
  end
end

# variables de dimensionamiento
dim = 5

# ejecución de las figuras
puts "> TEMA 2 -> FIGURAS COMPLETAS"
puts figuras_completas(dim)

puts

puts "> TEMA 2 -> FIGURAS VACÍAS"
puts figuras_vacias(dim)

