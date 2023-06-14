n = gets.to_i
case (1.08 * n).floor <=> 206
when -1
    puts "Yay!"
when 0
    puts "so-so"
when 1
    puts ":("
end