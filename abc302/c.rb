n, m = gets.split.map &:to_i
ss = n.times.map{ gets.chomp.chars }
rel = Array.new(n){ Array.new(n, nil) }
n.times do |i|
  n.times do |j|
    rel[i][j] = ss[i].zip(ss[j]).map{ _1 == _2 ? 0 : 1 }.sum == 1
  end
end

(0...n).to_a.permutation(n).each do |per|
  f = true
  per.each_cons(2) do |i, j|
    if !rel[i][j]
      f = false
      break
    end
  end
  if f
    puts 'Yes'
    exit
  end
end

puts 'No'