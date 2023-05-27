n = gets.to_i
players = []
input = gets.split.map(&:to_i)
(1..n).each do |i|
    players.push [input[i - 1], i]
end
players.sort_by!{|x| x[0]}.reverse!
puts players[1][1]