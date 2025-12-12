# crear un programa en ruby el cual nos detecte si una palabra es un anagrama o no
# un anagrama es una palabra que, una vez sea ordenada, genere la palabra matriz
def es_anagrama(a,b)
  false if a.size != b.size

  # definir arrays para cada palabra
  arr_a = a.chars
  arr_b = b.chars
  n = a.size

  (n-1).times do |i|
    (n-1-i).times do |j|
      # hacer evaluación e intercambio para la primera palabra
      if arr_a[j] > arr_a[j+1]
        arr_a[j], arr_a[j+1] = arr_a[j+1], arr_a[j]
      end
      # hacer evaluación e intercambio para la segunda palabta
      if arr_b[j] > arr_b[j+1]
        arr_b[j], arr_b[j+1] = arr_b[j+1], arr_b[j]
      end
    end
  end
  true if arr_a.join == arr_b.join
end

# test
palabra_a = "amor"
palabra_b = "maro"

puts "Las palabras #{palabra_a} y #{palabra_b}
      #{es_anagrama(palabra_a,palabra_b) ? "es anagrama ": "no es anagrama"}"


