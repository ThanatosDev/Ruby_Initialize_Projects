# frozen_string_literal: true

# in this project we'll to start to introduce the files treatment on the Ruby Language
# joining with this objective, we'll to explain how we do for make a file access and last how we can
# start a reading or writing process

# "w"   # write (escribir)
# "a"   # append (añadir)
# "w+"  # leer y escribir (borra)
# "a+"  # leer y escribir (añade)

# and last, we'll start the explanations using different functions for each action
# in a first moment we'll to see the write process
def writing
  # with the 'w' command we'll start to make a write instance, if file doesn't exist
  # this command will create someone new, but, if exist the file content will be erease and change for the new
  # information, this is an action for take a bit of CAUTION
  File.open("Ficheros/my_first_doc.txt", "w") do |file|
    file.puts "This is an first example of file writing"
    file.puts "If the file in a starting case doesn't exist, this command will create someone new"
  end
  puts
  puts "Writing succesful ..."
end

# in a second case, we'll to start a reading process on the code
def reading
  # for read an file, we have two different options, the first, make a quick reading, on all the file's
  # information will be save on a same String, that's only recomanate on shorts files, without many of information
  puts "-- WAY 1 FOR READING: ONE SAME STRING FOR ALL --"
  content = File.read("Ficheros/my_first_doc.txt")
  puts content
  # the second way we have to start a file reading starting line for line, don't saving the content in one
  # same string
  puts
  puts "-- WAY 2 FOR READING: READ LINE FOR LINE --"
  File.foreach("Ficheros/my_first_doc.txt") do |line|
    puts line
  end
  puts
  puts "Reading succesful..."
end

# in a threed case, we'll to start a append content on a file
def append(input)
  # for append we only need to open the file like we'll use on the writing case, but, changing the command
  # to 'a'
  File.open("Ficheros/my_first_doc.txt", "a") do |file|
    file.puts input
  end
end

# create a menu for interact with the program
menu = <<texto
====================================
              MENU
====================================
[1]. WRITE THE FILE
[2]. READ THE FILE
[3]. APPEND THE FILE
[4]. EXIT
====================================
texto

finalize = false
until finalize
  puts menu
  print "Select an option: "
  opt = gets.chomp.to_i

  case opt
  when 1 then writing
  when 2 then reading
  when 3
    puts "Write in the next line, the content that you want to add at the file --> "
    nc = gets.chomp
    append(nc)
  when 4 then finalize = true
  else
    puts "-- Invalid input, try again --"
  end
end

