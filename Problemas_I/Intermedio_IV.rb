# frozen_string_literal: false

# Crea un programa que reciba un número y devuelva la secuencia de Fibonacci hasta superar ese número.
# formula: F(n)=F(n−1)+F(n−2) para 𝑛 ≥ 2

# función de fibonnaci
def f(n)
  return 1 if n == 1 # f(1) = 1
  return 0 if n == 0 # f(0) = 0
  f(n - 1) + f(n - 2) # f(n) = f(n-1) + f(n-2)
end

# generar la secuencia de generaciones
l = 100 # límite
i = 0 # índice de iteraciones
print "["
while true
  val = f(i)
  break if val > l # romper la secuencia cuando val sea mayor que el límite propuesto
  print "#{val}, "
  i += 1 # incrementar el índice
end
print "]"
puts

