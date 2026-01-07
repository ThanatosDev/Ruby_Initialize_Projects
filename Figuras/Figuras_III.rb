# frozen_string_literal: true
n = 9
centro = n/2

# si el número es par reducirlo en un dígito,
# ya que únicamente con cifras impares se cumplen las propiedades de la figura
if n%2 == 0
  n -= 1
end

# moño vacío
n.times do |i|
  n.times do |j|
    if j == 0 || j == n-1 || j == i || j == n-(i+1)
      print "* "
    else
      print "  "
    end
  end
  puts
end

puts

# moño completo
n.times do |i|
  n.times do |j|
    # (Triángulo Izquierdo) O (Triángulo Derecho)
    if (j <= i && j <= n - 1 - i) || (j >= i && j >= n - 1 - i)
      print "* "
    else
      print "  "
    end
  end
  puts
end

puts

# reloj de arena vacío
n.times do |i|
  n.times do |j|
    if i == 0 || j == i || j == n-(i+1) || i == n-1
      print "* "
    else
      print "  "
    end
  end
  puts
end

puts

# reloj de arena completo
n.times do |i|
  n.times do |j|
    # LÓGICA DE RELLENO:
    # 1. Parte de arriba: (j >= i) Y (j <= n - 1 - i)
    #    (Entre la diagonal que baja y la que sube)
    #
    #    --- O (||) ---
    #
    # 2. Parte de abajo: (j <= i) Y (j >= n - 1 - i)
    #    (Entre la diagonal que sube y la que baja)

    if (j >= i && j <= n - 1 - i) || (j <= i && j >= n - 1 - i)
      print "* "
    else
      print "  "
    end
  end
  puts
end

puts

# rombo completo
n.times do |i|
  n.times do |j|
    # Calculamos qué tan lejos está esta fila del centro vertical
    distancia_al_centro = (centro - i).abs

    # LÓGICA DE RELLENO:
    # Pintar si 'j' está dentro del rango que forma el diamante.
    # Desde la izquierda: j >= distancia_al_centro
    # Hasta la derecha:   j <= (n - 1) - distancia_al_centro

    if j >= distancia_al_centro && j <= (n - 1 - distancia_al_centro)
      print "* "
    else
      print "  "
    end
  end
  puts
end

puts

# rombo vacío
n.times do |i|
  n.times do |j|
    distancia_al_centro = (centro - i).abs

    # LÓGICA DE VACÍO:
    # Solo pintamos si 'j' es EXACTAMENTE el borde izquierdo
    # O si 'j' es EXACTAMENTE el borde derecho

    if j == distancia_al_centro || j == (n - 1 - distancia_al_centro)
      print "* "
    else
      print "  "
    end
  end
  puts
end


