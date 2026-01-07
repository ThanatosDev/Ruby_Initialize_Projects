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
  (1..dimension).each do |i|
    # 1. Calcular los espacios iniciales para centrar el triangulo
    espacios_blancos = "  " * (dimension-i)

    # Pintar las lineas
    if i == 1
      # cúspide del triangulo
      puts espacios_blancos + "* "
    elsif i == dimension
      # base del triangulo (lleno de asteriscos)
      puts "* " * (2*dimension-1)
    else
      # lados del triangulo
      espacios_dentro = "  " * (2*i-3)
      puts espacios_blancos + "* " + espacios_dentro + "* "
    end

  end

  puts
  # tríangulo equilátero vacío invertido
  (0...dimension).each do |i|
    print "  " * i

    (0...(2*(dimension-i)-1)).each do |j|
      if i == 0 || j == 0 || j == 2*(dimension-i)-2
        print "* "
      else
        print "  "
      end
    end
    puts
  end

  puts
  # tríangulo equilátero vacío a 90º
  # 1. Parte superior del triangulo
  (0..(dimension+1)).each do |i|
    if i == 0
      # esquina de la base, solo un punto
      puts "*"
    else
      # el borde izquierdo de la base
      # el borde derecho es el lado inclinado
      # el espacio de en medio lo hace vacío.

      # multiplicamos espacios x2 para compensar la altura de la fuente
      # y que pareza más equilátero
      espacios = " " * (i*2)
      puts "*" + espacios + "*"
    end
  end

  # 2. Parte inferior del triangulo (de la punta hacia abajo)
  dimension.downto(0) do |i|
    if i == 0
      puts "*"
    else
      espacios = " " * (i*2)
      puts "*" + espacios + "*"
    end
  end

  # Triangulo equilátero vacío a 90º en espejo
  # 1. Parte Superior (Crecimiento)
  (0..dimension).each do |i|
    if i == 0
      # La punta solitaria.
      # Necesita: (dimension * 2) espacios + 1 extra (para compensar que falta la segunda estrella)
      # Así se alinea perfectamente con la pared derecha.
      puts " " * ((dimension * 2) + 1) + "*"
    else
      # El cuerpo:
      # Espacios externos: Disminuyen de 2 en 2 para que crezca hacia la izquierda.
      # Espacios internos: Aumentan de 2 en 2.
      espacios_externos = " " * ((dimension - i) * 2)
      espacios_internos = " " * (i * 2)
      puts espacios_externos + "*" + espacios_internos + "*"
    end
  end

  # 2. Parte Inferior (Decrecimiento)
  # Usamos .downto para hacer el espejo exacto de arriba
  (dimension - 1).downto(0) do |i|
    if i == 0
      puts " " * ((dimension * 2) + 1) + "*"
    else
      espacios_externos = " " * ((dimension - i) * 2)
      espacios_internos = " " * (i * 2)
      puts espacios_externos + "*" + espacios_internos + "*"
    end
  end


end

# variables de dimensionamiento
dim = 6

# ejecución de las figuras
puts "> TEMA 2 -> FIGURAS COMPLETAS"
puts figuras_completas(dim)

puts

puts "> TEMA 2 -> FIGURAS VACÍAS"
puts figuras_vacias(dim)

