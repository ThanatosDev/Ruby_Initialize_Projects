# frozen_string_literal: true

# Escribe un programa que reciba un string y cuente cuántas letras mayúsculas y minúsculas tiene.

print "Escribe una palabra/s: "
txt = gets.chomp

cont_min = 0
cont_may = 0

txt.each_char do |c|
  if ('a'..'z').include?(c)
    cont_min += 1
  elsif ('A'..'Z').include?(c)
    cont_may += 1
  end
end

puts "La palabra #{txt}, tiene: #{cont_min} minúsculas y #{cont_may} mayúsculas"