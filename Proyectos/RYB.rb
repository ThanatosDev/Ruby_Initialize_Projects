# frozen_string_literal: true

def print_c(line,delay_char,delay_line)
  line.each do |l|
    l.each_char do |c|
      print c
      sleep(delay_char) # with sleep we can make a delay on the char aparision
    end
    puts # line-jump
    sleep(delay_line) # sleep for the lines aparition
  end
end

lyrics = [
  "I wanna da-",
  "I wanna dance in the lights",
  "I wanna ro-",
  "I wanna rock your body",
  "I wanna go",
  "I wanna go for a ride",
  "Hope in the music",
  "and rock your body",
  "Rock that body",
  "come on, come on",
  "Rock that body",
  "Rock your body",
  "Rock that body",
  "come on, come on",
  "Rock that body"
]

print_c(lyrics,0.1,0.5)