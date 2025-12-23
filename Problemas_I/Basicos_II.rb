# frozen_string_literal: true

# Crea un programa que reciba dos números y devuelva su máximo común divisor (MCD).

# método que calcule el MCD
def mcd(c,d)
  k = c%d
  while k != 0
    c = d
    d = k
    # re-hacer la cuenta
    k = c%d
  end
  d
end

# hacer la interacción con el usuario
print "Ingresa el primer número para el cálculo del MCD: "
a = gets.chomp.to_i

print "Ingresa el segundo número para el cálculo del MCD: "
b = gets.chomp.to_i

puts mcd(a,b)